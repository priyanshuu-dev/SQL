-- SQL CASE WHEN Practice


-- Setup
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    experience INT,
    department VARCHAR(50)
);

INSERT INTO employees (id, name, salary, experience, department) VALUES
(1, 'Amit', 120000, 5, 'IT'),
(2, 'Priya', 75000, 3, 'HR'),
(3, 'Rahul', 40000, 1, 'Sales'),
(4, 'Sneha', 95000, 4, 'IT'),
(5, 'Arjun', 30000, 2, 'Support'),
(6, 'Neha', 110000, 6, 'HR'),
(7, 'Karan', 50000, 2, 'Sales');


-- Q1: Classify salary → High (>=100000), Medium (>=50000), Low
SELECT name, salary,
       CASE 
           WHEN salary >= 100000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employees;


-- Q2: Salary >=100000 → Rich, else Normal
SELECT name, salary,
       CASE 
           WHEN salary >= 100000 THEN 'Rich'
           ELSE 'Normal'
       END AS status
FROM employees;


-- Q3: Experience >=3 → Experienced, else Fresher
SELECT name, experience,
       CASE 
           WHEN experience >= 3 THEN 'Experienced'
           ELSE 'Fresher'
       END AS experience_level
FROM employees;


-- Q4: Classify salary → High (>=100000), Medium (>=70000), Low
SELECT name, salary,
       CASE 
           WHEN salary >= 100000 THEN 'High'
           WHEN salary >= 70000 THEN 'Medium'
           ELSE 'Low'
       END AS category
FROM employees;


-- Q5: IT + salary >=90000 → Top_IT, HR + salary >=80000 → Top_HR, else Normal
SELECT name, department, salary,
       CASE 
           WHEN department = 'IT' AND salary >= 90000 THEN 'Top_IT'
           WHEN department = 'HR' AND salary >= 80000 THEN 'Top_HR'
           ELSE 'Normal'
       END AS category
FROM employees;

