create database demo;
use demo;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    City VARCHAR(50)
);

INSERT INTO Employee  
VALUES 
(1, 'Amit', 'Sharma', 28, 'IT', 50000.00, 'Mumbai'),
(2, 'Priya', 'Verma', 25, 'HR', 45000.00, 'Delhi'),
(3, 'Rohit', 'Patel', 30, 'Finance', 60000.00, 'Bangalore'),
(4, 'Sneha', 'Gupta', 27, 'Marketing', 48000.00, 'Pune'),
(5, 'Vikram', 'Singh', 32, 'IT', 70000.00, 'Chennai'),
(6, 'Neha', 'Jain', 29, 'Finance', 55000.00, 'Hyderabad'),
(7, 'Rahul', 'Yadav', 26, 'HR', 47000.00, 'Mumbai'),
(8, 'Kavita', 'Joshi', 31, 'IT', 65000.00, 'Delhi'),
(9, 'Ankur', 'Mishra', 33, 'Marketing', 52000.00, 'Kolkata'),
(10, 'Meena', 'Chopra', 24, 'Finance', 43000.00, 'Bangalore'),
(11, 'Suresh', 'Reddy', 35, 'IT', 75000.00, 'Hyderabad'),
(12, 'Swati', 'Malhotra', 28, 'HR', 46000.00, 'Pune'),
(13, 'Manish', 'Dube', 29, 'Finance', 57000.00, 'Chennai'),
(14, 'Pooja', 'Shukla', 26, 'Marketing', 50000.00, 'Kolkata'),
(15, 'Arjun', 'Deshmukh', 34, 'IT', 72000.00, 'Mumbai');


SELECT * FROM EMPLOYEE WHERE department='IT';

SELECT * FROM EMPLOYEE WHERE SALARY >50000;

SELECT * FROM EMPLOYEE WHERE CITY= 'Mumbai';

SELECT * FROM EMPLOYEE WHere Age >30;

select * from employee where salary > 45000 and salary < 60000;

SELECT * FROM EMPLOYEE WHERE department = 'HR' OR department = 'Finance';


SELECT * FROM EMPLOYEE WHERE department = 'HR' OR department = 'Finance';

SELECT * FROM EMPLOYEE WHERE AGE = 28 OR AGE = 29;

SELECT * FROM EMPLOYEE WHERE SALARY < 55000 AND department = 'Marketing';

update from 

