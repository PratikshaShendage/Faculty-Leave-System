create database Faculty_Leave_Management_System;
use Faculty_Leave_Management_System;

create table signup
(
  faculty_id int auto_increment primary key,
  full_name nvarchar(50),
  email nvarchar(50),
  mobile_no int(50),
  department nvarchar(50),
  date_of_birth nvarchar(50)
  
);

create table apply_leave
(
  id int auto_increment primary key,
  name nvarchar(50),
  email nvarchar(50),
  leave_type nvarchar(50),
  duration nvarchar(50),
  form nvarchar(50),
  date nvarchar(50),
  reason nvarchar(500)

);
