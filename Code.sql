-- -----------------------------------------
-- Mpofu Airlines Database Management System
-- Full SQL Code (DDL + DML + Views + Queries)
-- -----------------------------------------

-- ----------------------
-- 1. Passengers Table
-- ----------------------
CREATE TABLE Passengers (
Passenger_ID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(20),
Passport_No VARCHAR(20)
);

-- ----------------------
-- 2. Aircraft Table
-- ----------------------
CREATE TABLE Aircraft (
Aircraft_ID INT PRIMARY KEY,
Model VARCHAR(50),
Capacity INT,
Status VARCHAR(20)
);

-- ----------------------
-- 3. Flights Table
-- ----------------------
CREATE TABLE Flights (
Flight_ID INT PRIMARY KEY,
Origin VARCHAR(50),
Destination VARCHAR(50),
Departure_Time DATETIME,
Arrival_Time DATETIME,
Aircraft_ID INT,
FOREIGN KEY (Aircraft_ID) REFERENCES Aircraft(Aircraft_ID)
);

-- ----------------------
-- 4. Bookings Table
-- ----------------------
CREATE TABLE Bookings (
Booking_ID INT PRIMARY KEY,
Passenger_ID INT,
Flight_ID INT,
Booking_Date DATE,
Seat_No VARCHAR(10),
Total_Price DECIMAL(10,2),
FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID),
FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID)
);

-- ----------------------
-- 5. Staff Table
-- ----------------------
CREATE TABLE Staff (
Staff_ID INT PRIMARY KEY,
Name VARCHAR(100),
Role VARCHAR(50),
Assigned_Flight INT,
FOREIGN KEY (Assigned_Flight) REFERENCES Flights(Flight_ID)
);

-- ----------------------
-- INSERT SAMPLE DATA
-- ----------------------

INSERT INTO Passengers VALUES
(1, 'John Dlamini', 'john@gmail.com', '9876543210', 'A12345'),
(2, 'Lerato Moyo', 'lerato@gmail.com', '9988776655', 'B76543'),
(3, 'Mukudade Mukalwa', 'muku@gmail.com', '8899001122', 'C11223');

INSERT INTO Aircraft VALUES
(101, 'Boeing 737', 180, 'Operational'),
(102, 'Airbus A320', 160, 'Maintenance'),
(103, 'Boeing 777', 300, 'Operational');

INSERT INTO Flights VALUES
(201, 'Johannesburg', 'Cape Town', '2025-02-20 08:00:00', '2025-02-20 10:00:00', 101),
(202, 'Durban', 'Johannesburg', '2025-02-21 09:00:00', '2025-02-21 10:00:00', 103),
(203, 'Harare', 'Johannesburg', '2025-02-22 17:00:00', '2025-02-22 19:00:00', 102);

INSERT INTO Bookings VALUES
(301, 1, 201, '2025-02-01', '12A', 1500),
(302, 2, 201, '2025-02-02', '14C', 1500),
(303, 3, 202, '2025-02-05', '08B', 2000),
(304, 3, 201, '2025-02-07', '10F', 1500);

INSERT INTO Staff VALUES
(401, 'Alice Nkomo', 'Pilot', 201),
(402, 'Thomas Khumalo', 'Cabin Crew', 201),
(403, 'Jack Ngwenya', 'Ground Staff', 202);

-- ----------------------
-- VIEWS
-- ----------------------

-- 1. View: Passenger Booking Summary
CREATE VIEW PassengerBookingView AS
SELECT p.Passenger_ID, p.Name AS Passenger_Name, f.Origin, f.Destination,
SUM(b.Total_Price) AS Total_Spent
FROM Passengers p
JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID
JOIN Flights f ON b.Flight_ID = f.Flight_ID
GROUP BY p.Passenger_ID, p.Name, f.Origin, f.Destination;

-- 2. View: Flight Revenue Summary
CREATE VIEW FlightRevenueView AS
SELECT f.Flight_ID, f.Origin, f.Destination,
SUM(b.Total_Price) AS Flight_Revenue
FROM Flights f
JOIN Bookings b ON f.Flight_ID = b.Flight_ID
GROUP BY f.Flight_ID, f.Origin, f.Destination;

-- 3. View: Staff Assignments
CREATE VIEW StaffAssignmentView AS
SELECT s.Name AS Staff_Name, s.Role, f.Flight_ID, f.Origin, f.Destination
FROM Staff s
JOIN Flights f ON s.Assigned_Flight = f.Flight_ID;

-- ----------------------
-- ANALYTICAL QUERIES
-- ----------------------

-- Query 1: High-Spending Passengers
SELECT Passenger_Name, Total_Spent
FROM PassengerBookingView
WHERE Total_Spent > 2000;

-- Query 2: Top Earning Flights
SELECT * FROM FlightRevenueView
ORDER BY Flight_Revenue DESC;

-- Query 3: View Staff Assignments
SELECT * FROM StaffAssignmentView;

-- Query 4: Full Booking Details
SELECT p.Name, f.Flight_ID, f.Origin, f.Destination, b.Seat_No, b.Total_Price
FROM Passengers p
JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID
JOIN Flights f ON f.Flight_ID = b.Flight_ID;

