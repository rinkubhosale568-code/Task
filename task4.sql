CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    email VARCHAR(100),
    status VARCHAR(20)
);

INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, email, status)
VALUES
(101, 'Rahul Patil', 'IT', 55000, 'Pune', '2024-06-15', 'rahul@company.com', 'Active'),
(102, 'Priya Sharma', 'HR', 35000, 'Mumbai', '2025-02-10', 'priya@company.com', 'Active'),
(103, 'Amit Joshi', 'Sales', 42000, 'Pune', '2025-05-20', NULL, 'Active'),
(104, 'Sneha Kulkarni', 'Testing', 38000, 'Nashik', '2024-11-12', 'sneha@company.com', 'Inactive'),
(105, 'Rohan Deshmukh', 'IT', 65000, 'Mumbai', '2026-01-15', 'rohan@company.com', 'Active'),
(106, 'Anjali More', 'Finance', 48000, 'Pune', '2025-07-01', NULL, 'Active'),
(107, 'Sagar Patil', 'Support', 30000, 'Nagpur', '2024-03-10', 'sagar@company.com', 'Inactive'),
(108, 'Riya Shah', 'IT', 72000, 'Pune', '2026-02-20', 'riya@company.com', 'Active'),
(109, 'Akash Jadhav', 'Sales', 46000, 'Mumbai', '2025-09-15', 'akash@company.com', 'Active'),
(110, 'Pooja Pawar', 'HR', 32000, 'Nashik', '2024-12-01', NULL, 'Inactive'),
(111, 'Raj Sharma', 'IT', 58000, 'Pune', '2025-03-25', 'raj@company.com', 'Active'),
(112, 'Swati More', 'Testing', 40000, 'Mumbai', '2026-03-05', 'swati@company.com', 'Active'),
(113, 'Ramesh Patil', 'Sales', 62000, 'Pune', '2025-06-10', NULL, 'Active'),
(114, 'Kiran Joshi', 'Support', 28000, 'Nashik', '2024-08-18', 'kiran@company.com', 'Inactive'),
(115, 'Snehal Pawar', 'IT', 75000, 'Mumbai', '2026-04-12', 'snehal@company.com', 'Active'),
(116, 'Sachin More', 'HR', 36000, 'Pune', '2025-08-22', NULL, 'Active'),
(117, 'Rohit Kulkarni', 'Finance', 52000, 'Mumbai', '2024-10-05', 'rohit@company.com', 'Inactive'),
(118, 'Asha Patil', 'Sales', 44000, 'Nashik', '2025-04-15', 'asha@company.com', 'Active'),
(119, 'Rajesh Shah', 'IT', 68000, 'Pune', '2026-05-10', NULL, 'Active'),
(120, 'Priyanka More', 'Testing', 39000, 'Mumbai', '2025-11-20', 'priyanka@company.com', 'Active'),
(121, 'Sameer Joshi', 'Support', 31000, 'Pune', '2024-05-25', 'sameer@company.com', 'Inactive'),
(122, 'Rashmi Patil', 'HR', 45000, 'Mumbai', '2026-02-01', NULL, 'Active'),
(123, 'Arjun More', 'Sales', 57000, 'Pune', '2025-10-10', 'arjun@company.com', 'Active'),
(124, 'Ravi Sharma', 'IT', 49000, 'Nashik', '2024-07-30', 'ravi@company.com', 'Inactive'),
(125, 'Seema Kulkarni', 'Finance', 60000, 'Pune', '2026-06-15', NULL, 'Active');

SELECT * FROM employees;

SELECT * FROM employees
WHERE city = 'Pune';

SELECT * FROM employees
WHERE city = 'Mumbai';

SELECT * FROM employees
WHERE department = 'IT';

SELECT * FROM employees
WHERE department = 'HR';

SELECT * FROM employees
WHERE department = 'Sales';

SELECT * FROM employees
WHERE status = 'Active';

SELECT * FROM employees
WHERE status = 'Inactive';

SELECT * FROM employees
WHERE employee_id = 103;

SELECT * FROM employees
WHERE employee_name = 'Priya Sharma';

SELECT * FROM employees
WHERE salary = 35000;

SELECT * FROM employees
WHERE city != 'Pune';

SELECT * FROM employees
WHERE department <> 'Testing';

SELECT * FROM employees
WHERE salary > 40000;

SELECT * FROM employees
WHERE salary < 35000;

SELECT * FROM employees
WHERE salary >= 50000;

SELECT * FROM employees
WHERE salary <= 30000;

SELECT * FROM employees
WHERE joining_date > '2025-01-01';

SELECT * FROM employees
WHERE joining_date <= '2024-12-31';

SELECT * FROM employees
WHERE employee_id > 110;

SELECT employee_name, joining_date
FROM employees
WHERE joining_date >= '2026-01-01';

SELECT * FROM employees
WHERE city = 'Pune'
AND status = 'Active';

SELECT * FROM employees
WHERE department = 'IT'
AND salary > 50000;

SELECT * FROM employees
WHERE city = 'Mumbai'
AND status = 'Inactive';

SELECT * FROM employees
WHERE department = 'Sales'
AND city = 'Pune'
AND salary >= 42000;

SELECT * FROM employees
WHERE department = 'HR'
AND joining_date > '2025-06-01';

SELECT * FROM employees
WHERE status = 'Active'
AND salary >= 40000
AND salary <= 70000;

SELECT * FROM employees
WHERE city = 'Mumbai'
AND department = 'Testing'
AND salary > 38000;

SELECT * FROM employees
WHERE status = 'Active'
AND joining_date >= '2026-01-01'
AND salary > 45000;

SELECT * FROM employees
WHERE city = 'Pune'
OR city = 'Mumbai';

SELECT * FROM employees
WHERE department = 'IT'
OR department = 'HR';

SELECT * FROM employees
WHERE salary < 32000
OR salary > 60000;

SELECT * FROM employees
WHERE city = 'Nashik'
OR salary > 55000;

SELECT * FROM employees
WHERE NOT department = 'HR';

SELECT * FROM employees
WHERE NOT status = 'Inactive';

SELECT * FROM employees
WHERE (city = 'Pune' OR city = 'Mumbai')
AND status = 'Active';

SELECT * FROM employees
WHERE city <> 'Pune'
AND salary > 40000;

SELECT * FROM employees
WHERE salary BETWEEN 35000 AND 55000;

SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 65000;

SELECT * FROM employees
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';

SELECT * FROM employees
WHERE employee_id BETWEEN 105 AND 115;

SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Sales');

SELECT * FROM employees
WHERE city IN ('Pune', 'Mumbai', 'Nagpur');

SELECT * FROM employees
WHERE department NOT IN ('Testing', 'Support');

SELECT * FROM employees
WHERE city NOT IN ('Mumbai', 'Nashik');

SELECT * FROM employees
WHERE employee_id IN (101, 105, 110, 115, 120);

SELECT * FROM employees
WHERE department IN ('IT', 'Sales')
AND salary BETWEEN 45000 AND 75000;

SELECT * FROM employees
WHERE employee_name LIKE 'A%';

SELECT * FROM employees
WHERE employee_name LIKE 'R%';

SELECT * FROM employees
WHERE employee_name LIKE '%a';

SELECT * FROM employees
WHERE employee_name LIKE '%sh%';

SELECT * FROM employees
WHERE employee_name LIKE 'P%a';

SELECT * FROM employees
WHERE employee_name LIKE '_____';

SELECT * FROM employees
WHERE employee_name LIKE '_a%';

SELECT * FROM employees
WHERE employee_name NOT LIKE 'R%';

SELECT * FROM employees
WHERE email IS NULL;

SELECT * FROM employees
WHERE email IS NOT NULL;

SELECT * FROM employees
WHERE city = 'Pune'
AND email IS NULL;

SELECT * FROM employees
WHERE status = 'Active'
AND email IS NOT NULL
AND salary > 40000;

SELECT * FROM employees
WHERE status = 'Active'
AND city IN ('Pune', 'Mumbai')
AND department IN ('IT', 'Sales')
AND salary BETWEEN 40000 AND 70000
AND joining_date > '2025-01-01';

SELECT * FROM employees
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
AND email IS NOT NULL
AND status = 'Active'
AND city IN ('Pune', 'Nashik');

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT * FROM employees;