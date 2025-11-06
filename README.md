🛫 Mpofu Airlines Database Management System (DBMS)

 ✅ Complete DBMS Project • ✅ PBL Phase 1–4 • ✅ SQL • ✅ ERD • ✅ Views • ✅ Joins • ✅ Reports

---

📘 Project Title:  
Mpofu Airlines – Airline Management System (DBMS)  

Course: CONT_24CAP-204  
Author: Bhekumuzi (Bhekumuzi / Nkosisiza)  
Institution: Chandigarh University  
Academic Year: 2024–2025  

---

📖 Table of Contents:

1. Project Overview  
2. PBL Phase 1 – Problem Identification  
3. PBL Phase 2 – Conceptual Design  
4. PBL Phase 3 – Mid-Term Progress Report  
5. PBL Phase 4 – Final Implementation  
6. ER Diagram  
7. Database Schema  
8. Full SQL Code (external)  
9. Sample Output Screenshots  
10. Project Structure  
11. Tools & Technologies  
12. Learning Outcomes  
13. Conclusion  
14. License  

---

✅ Project Overview:

The Mpofu Airlines Database Management System digitizes airline operations using SQL.  
It manages flights, bookings, customers, staff, and aircraft while also generating reports and analytics.  
This project follows all PBL phases and demonstrates complete DBMS understanding.

---

✅ PBL Phase 1 – Problem Identification:

Problems Identified:
- Manual booking system → double bookings  
- No centralized customer tracking  
- Flight data difficult to update  
- No staff scheduling system  
- No revenue or performance reporting  

Goals:
- Create relational database  
- Automate bookings and schedules  
- Track customers, staff, and revenue  
- Provide intelligent reporting  

---

✅ PBL Phase 2 – Conceptual Design:

✅ Entities:
- Customers  
- Aircraft  
- Flights  
- Bookings  
- Staff  

✅ Relationships:
- Customer → Bookings (1:M)  
- Flights → Bookings (1:M)  
- Aircraft → Flights (1:M)  
- Flights → Staff (1:M)  

✅ Normalization:
Database normalized up to 3NF.

---

✅ PBL Phase 3 – Mid-Term Progress Report:

✅ All tables created  
✅ DDL + DML completed  
✅ Views implemented  
✅ Sample data inserted  
✅ Analytical queries tested  

---

✅ PBL Phase 4 – Final Implementation:

Includes:
- ✅ SQL Views  
- ✅ Analytical Queries  
- ✅ Staff assignment system  
- ✅ Revenue reports  
- ✅ High-value customer insights  

---

✅ ER Diagram:

```
        ┌──────────────┐
        │  Customers   │
        │--------------│
        │ Customer_ID (PK)
        │ Name
        │ Email
        │ Phone
        │ Passport_No
        └───────┬──────┘
                │ 1..*
                │
        ┌───────▼──────┐
        │   Bookings   │
        │--------------│
        │ Booking_ID (PK)
        │ Customer_ID (FK)
        │ Flight_ID (FK)
        │ Booking_Date
        │ Seat_No
        │ Total_Price
        └───────┬──────┘
                │ *..1
                │
        ┌───────▼────────┐
        │     Flights     │
        │-----------------│
        │ Flight_ID (PK)
        │ Origin
        │ Destination
        │ Departure_Time
        │ Arrival_Time
        │ Aircraft_ID (FK)
        └──────┬─────────┘
               │ 1..*
               │
     ┌─────────▼──────────┐
     │      Staff          │
     │---------------------│
     │ Staff_ID (PK)
     │ Name
     │ Role
     │ Assigned_Flight (FK)
     └─────────────────────┘

     ┌────────────────────┐
     │     Aircraft       │
     │--------------------│
     │ Aircraft_ID (PK)
     │ Model
     │ Capacity
     │ Status
     └────────────────────┘
```

---

✅ Database Schema:
5 Main Tables:
- Customers  
- Aircraft  
- Flights  
- Bookings  
- Staff  

3 Views:
- CustomerBookingView  
- FlightRevenueView  
- StaffAssignmentView  

---

✅ Full SQL Code:
The full SQL script is included separately in `database.sql`.

---

✅ Sample Output Screenshots:
Stored in `/screenshots/`.

---

✅ Project Folder Structure:

```
Mpofu_Airlines_DBMS_Project/
│── README.md
│── database.sql
│── /screenshots
│     └── sql_output.png
```

---

✅ Tools & Technologies:
- MySQL  
- SQL Server / Programiz SQL  
- VS Code (Dark Mode)  
- ERD Modeling Tools  

---

✅ Learning Outcomes:
- ✅ CO1 – Identify DBMS Components  
- ✅ CO2 – Implement SQL queries  
- ✅ CO3 – Apply relational theory  
- ✅ CO4 – Construct algebra-based queries  
- ✅ CO5 – Normalize database structures  

---

✅ Conclusion:

The Mpofu Airlines DBMS successfully implements a modern, scalable, and efficient data management system suitable for airline operations.  
It improves accuracy, reduces redundancy, supports decision-making, and meets academic and industrial DBMS standards.

---

✅ License:
MIT License – Free for educational use.

---

✅ Author:
Bhekumuzi (Bhekumuzi / Nkosisiza)  
Chandigarh University  


