create database demo1;
use demo1;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    dept VARCHAR(50),
    workinghours INT,
    manager_name VARCHAR(50)
);


INSERT INTO employees (id, name, age, dept, workinghours, manager_name) VALUES
(1, 'Rahul', 28, 'IT', 45, 'Arvind'),
(2, 'Priya', 32, 'HR', 40, 'Meena'),
(3, 'Suresh', 30, 'IT', 50, 'Arvind'),
(4, 'Neha', 29, 'Finance', 38, 'Kiran'),
(5, 'Amit', 35, 'IT', 55, 'Arvind');

INSERT INTO employees (id, name, age, dept, workinghours, manager_name) VALUES
(6, 'Ramesh', 27, 'HR', 42, 'Meena'),
(7, 'Pooja', 31, 'Finance', 37, 'Kiran'),
(8, 'Anil', 26, 'Marketing', 46, 'Deepak'),
(9, 'Sunita', 33, 'HR', 44, 'Meena'),
(10, 'Rajesh', 34, 'IT', 48, 'Arvind'),
(11, 'Kavita', 28, 'Marketing', 41, 'Deepak'),
(12, 'Manish', 36, 'Finance', 39, 'Kiran'),
(13, 'Sneha', 25, 'Marketing', 47, 'Deepak'),
(14, 'Vikram', 29, 'IT', 52, 'Arvind'),
(15, 'Preeti', 30, 'HR', 43, 'Meena');

select * from employees;
select dept ,sum(workinghours) from employees group by dept;

select dept , avg(age) from employees group by dept having avg(age)> 30;

select dept , count(*) from employees group by dept having  count(*)>2;

select manager_name ,min(workinghours),max(workinghours) from employees group by manager_name;

select manager_name ,count(*) from employees group by manager_name order by  count(*) desc;


select dept , sum(workinghours) from employees group by dept having sum(workinghours)>100;

select dept from employees group by dept order by avg(workinghours) desc limit 1;

select manager_name , count(*) from employees group by manager_name having count(*) >= 3 ;

select dept , count(*), avg(age) from employees group by dept order by dept;

select dept ,sum(workinghours) from employees group by dept having sum(workinghours)
 between 80 and 150;





