-- Employees Table Practice

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO employees (id, name, salary, department, city) VALUES
(1, 'Amit', 25000, 'HR', 'Delhi'),
(2, 'Priya', 40000, 'IT', 'Mumbai'),
(3, 'Rahul', 30000, 'IT', 'Delhi'),
(4, 'Sneha', 45000, 'Finance', 'Pune'),
(5, 'Arjun', 28000, 'HR', 'Mumbai'),
(6, 'Neha', 50000, 'IT', 'Bangalore'),
(7, 'Vikram', 35000, 'Finance', 'Delhi'),
(8, 'Kavya', 32000, 'IT', 'Pune'),
(9, 'Rohan', 27000, 'HR', 'Bangalore'),

(10, 'Meera', 48000, 'Finance', 'Mumbai');


-- Q1: Display all employee names
SELECT name FROM employees;

-- Q2: Display all employee details
SELECT * FROM employees;

-- Q3: Display employees earning more than 30000
SELECT name, salary
FROM employees
WHERE salary > 30000;

-- Q4: Display employees from IT department
SELECT name, department
FROM employees
WHERE department = 'IT';

-- Q5: Display employees with salary between 25000 and 40000
SELECT name, salary
FROM employees
WHERE salary BETWEEN 25000 AND 40000;

-- Q6: Display employees from Delhi in HR department
SELECT name, city, department
FROM employees
WHERE city = 'Delhi'
AND department = 'HR';

-- Q7: Display employees sorted by salary (highest first)
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- Q8: Count total number of employees
SELECT COUNT(*) FROM employees;

-- Q9: Find highest salary
SELECT MAX(salary) FROM employees;

-- Q10: Find lowest salary
SELECT MIN(salary) FROM employees;

-- Q11: Find average salary in IT department
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';

-- Q12: Find average salary department-wise
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
