# 🏥 Clinic Booking System

A simple and well-structured relational database for managing patient bookings, doctor schedules, services, and medical records in a clinic. Built entirely with **MySQL**.

---

## 📌 Project Features

- Patient registration and profile management  
- Doctor records and specializations  
- Services offered by the clinic  
- Appointment scheduling and tracking  
- Many-to-Many relationship between appointments and services  
- One-to-One medical record per patient  

---

## 🗃️ Technologies Used

- MySQL (Structured Query Language)
- ERD generated via [dbdiagram.io](https://dbdiagram.io)

---

## 📁 Project Structure

```

clinic-booking-system/
│
├── clinic\_booking\_system.sql      # Main SQL file with all CREATE TABLE statements
├── README.md                      # This file

````

---

## ▶️ How to Set Up / Run the Project

### Option 1: Import via MySQL CLI

1. Open your MySQL terminal
2. Run:

```bash
mysql -u your_username -p < clinic_booking_system.sql
````

3. Enter your password
4. Database `Clinic` will be created with all tables

---

### Option 2: Import via MySQL Workbench

1. Open **MySQL Workbench**
2. Create a new connection
3. Go to **File > Open SQL Script**
4. Open `clinic_booking_system.sql`
5. Click **Execute** (lightning bolt icon)

---

## 🧩 Entity Relationship Diagram (ERD)

![Clinic ERD](https://your-erd-image-link.com)
🔗 [Click to view interactive ERD](https://dbdiagram.io/d/your-diagram-id)

> **Note:** Replace with your actual ERD image URL or dbdiagram share link.

---

## 📌 Notes

* The SQL file includes proper constraints: `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`
* Comments in the SQL file explain each table and relationship
* Many-to-Many and One-to-One relationships are properly modeled

---

## 👨‍💻 Author

**Your Name**
Email: [your.email@example.com](mailto:brayanmaluki@gmail.com)
GitHub: [your-github](https://github.com/maluki65)

---

## 📄 License

This project is licensed under the MIT License.
