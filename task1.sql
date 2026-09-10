create database company_db;
use company_db;
create table employees(employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50),
joining_date DATE,
status VARCHAR(20));
select * from employees;
INSERT INTO employees
VALUES
(101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active'),
(102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active'),
(103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active'),
(105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');
select * from employees;

select employee_name from employees;
select employee_name, salary from employees;
select employee_name, department, city from employees;
select employee_name from employees where city = 'pune';
select employee_name from employees where city = 'mumbai';
select * from employees where department = 'development';
select * from employees where department = 'testing';
select * from employees where status = 'active';
select * from employees where status = 'inactive';
select * from employees where employee_id = 103;
select * from employees where employee_name = 'Priya Sharma';
select * from employees where salary > 40000;
select * from employees where salary < 40000;
select * from employees where salary = 35000;
select * from employees where salary >= 42000;
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
select * from employees where department = 'development' and salary = 45000;
select * from employees where city = 'pune' or city = 'mumbai';
UPDATE employees
SET salary = 48000
WHERE employee_id = 101;
UPDATE employees
SET status = 'Active'
WHERE employee_id = 105;
UPDATE employees
SET city = 'Pune'
WHERE employee_id = 104;
UPDATE employees
SET department = 'Development'
WHERE employee_id = 102;
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;
UPDATE employees
SET salary = salary + 3000
WHERE employee_id = 103;
UPDATE employees
SET salary = salary + 2000
WHERE employee_id = 106;
UPDATE employees
SET city = 'Mumbai Branch'
WHERE employee_id IN (102, 105);
DELETE FROM employees
WHERE employee_id = 105;
delete from employees where status = inactive;
delete from employees where salary < 30000;
delete from employees where employee_id = 104;
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
ALTER TABLE employees
ADD COLUMN mobile VARCHAR(15);
ALTER TABLE employees
MODIFY COLUMN city VARCHAR(100);
ALTER TABLE employees
RENAME COLUMN employee_name TO name;
ALTER TABLE employees
DROP COLUMN mobile;
ALTER TABLE employees
ADD COLUMN experience INT;
UPDATE employees
SET experience = 2
WHERE employee_id = 101;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);
INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'Development', 'Pune'),
(2, 'Testing', 'Mumbai'),
(3, 'HR', 'Nashik');
SELECT * FROM departments;
UPDATE departments
SET location = 'Pune'
WHERE department_id = 2;
DELETE FROM departments
WHERE department_id = 3;
RENAME TABLE departments TO company_departments;
DESCRIBE company_departments;
TRUNCATE TABLE company_departments;
DROP TABLE company_departments;
SHOW TABLES;

