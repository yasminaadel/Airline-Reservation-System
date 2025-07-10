# Flight Reservation System

A database-driven C# application that simulates a flight reservation system, supporting user/admin roles, flight booking operations, and aircraft management.

## Project Overview

The application allows customers to:

* Sign up and manage their profile
* Browse available flights based on flexible criteria
* Book, cancel, and modify reservations
* Select flight class (economy, business, etc.)

Admins can:

* Add, update, and delete aircraft and flight records
* Manage available classes and pricing
* View customer bookings

## Database

### Conceptual ERD

The system models real-world relationships using these core entities:

* *User* (base for Admin and Customer)
* *Aircraft*
* *Flight*
* *Booking*
* *Class*
* *Baggage* (weak entity)

<img width="3762" height="3193" alt="image" src="https://github.com/user-attachments/assets/5c43a084-6ba9-4282-8997-46694a603d9c" />


### Physical ERD Highlights

* Relational database created using *SQL Server*
* Supports *1:1, **1\:N, and **M\:N* relationships
* Includes appropriate use of *foreign keys, **data types, and **constraints*

<img width="3762" height="3361" alt="image" src="https://github.com/user-attachments/assets/4f881cef-f3bf-48f0-b0f7-2c609c224d6b" />


## Technologies Used

* *Backend:* C# with Windows Forms
* *Database:* Microsoft SQL Server
* *Language:* SQL
* *IDE:* Visual Studio
* *GUI:* WinForms


## Key Functionalities

### CRUD Operations

* Insert, delete, and update statements on multiple tables (Users, Flights, Bookings, etc.)

### Search & Filtering

* Users can filter available flights by date, source, destination, and required seats

### Joins

* Complex SQL joins used to fetch booking details across multiple tables

## Screenshots

<img width="643" height="435" alt="image" src="https://github.com/user-attachments/assets/4fb569e4-1955-4f2c-b9e0-1ee7a45d04fa" />

<img width="643" height="440" alt="image" src="https://github.com/user-attachments/assets/5d2a7dfa-362a-4147-a559-b319802a474b" />

<img width="644" height="447" alt="image" src="https://github.com/user-attachments/assets/065bf52d-334a-4106-82c2-f404efa332b2" />

<img width="639" height="450" alt="image" src="https://github.com/user-attachments/assets/b479881c-1e05-4efc-aecd-d031f4af839c" />

<img width="642" height="445" alt="image" src="https://github.com/user-attachments/assets/e1eece0e-3db1-4d5d-a7b2-46808d53dbae" />

<img width="642" height="419" alt="image" src="https://github.com/user-attachments/assets/3cdac660-94c1-4c71-9346-b147b4bb83be" />

<img width="642" height="440" alt="image" src="https://github.com/user-attachments/assets/e14834f8-4f17-4411-b9cf-b538c8bf3bf2" />

<img width="643" height="440" alt="image" src="https://github.com/user-attachments/assets/ccbed211-e3d7-4463-b2e3-c1f69565047e" />

<img width="642" height="443" alt="image" src="https://github.com/user-attachments/assets/e273ecd0-5241-4c22-8a10-10bf1ec8f376" />

<img width="642" height="392" alt="image" src="https://github.com/user-attachments/assets/fb2147a8-21bf-4be8-981c-70d7aa8eb20e" />

<img width="646" height="420" alt="image" src="https://github.com/user-attachments/assets/96bd9e66-674b-44b7-86f4-0ec879bbbb42" />

<img width="643" height="436" alt="image" src="https://github.com/user-attachments/assets/d58ddfc8-4d36-46e2-8ff8-173e3b945b45" />

<img width="644" height="424" alt="image" src="https://github.com/user-attachments/assets/73f8bb89-3cea-4bae-b6ca-b58a8b1d3a69" />

<img width="644" height="442" alt="image" src="https://github.com/user-attachments/assets/92eb62c0-d698-4f37-bf3e-0002deca8c3b" />
