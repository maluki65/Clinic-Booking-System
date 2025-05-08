-- On creating database
create database clinic;
use clinic;
-- On creating Patient table
create table Patients (
patient_id int auto_increment primary key,
first_name varchar(100) not null,
last_name varchar(100) not null,
gender enum ('male', 'Female', 'Other') not null,
date_of_birth date not null,
phone varchar(100) unique,
created_at timestamp default current_timestamp
);

-- On creating Doctors table
create table Doctors (
doctor_id int auto_increment primary key,
first_name varchar(100) not null,
last_name varchar(100) not null,
specialization varchar(100) not null,
phone varchar(100) unique not null,
email varchar(100) unique,
created_at timestamp default current_timestamp
);

-- On creating table for services offered
create table Services (
service_id int auto_increment primary key,
name varchar(100) not null unique,
description text,
price decimal(10,2) not null
);

-- On creating an appointment table which links patients to doctors
create table Appointments (
appointment_id int auto_increment primary key,
patient_id int not null,
doctor_id int not null,
appointment_date datetime not null,
status enum('Scheduled', 'Completed', 'Cancelled') default 'Scheduled',
notes text,
created_at timestamp default current_timestamp,
foreign key (patient_id) references Patients(patient_id),
foreign key (doctor_id) references Doctors(doctor_id)
);

-- Many-to-many table between appointments and services
create table AppointmentServices (
appointment_id int,
service_id int,
primary key (appointment_id, service_id),
foreign key (appointment_id) references Appointments(appointment_id),
foreign key (service_id) references Services(service_id)
);

-- One-to-one table for each patient's medical record
create table MedicalRecords (
record_id int auto_increment primary key,
patient_id int unique not null,
blood_type varchar(5),
allergies text,
chronic_conditions text,
last_updated timestamp default current_timestamp on update current_timestamp,
foreign key (patient_id ) references Patients(patient_id)
);
