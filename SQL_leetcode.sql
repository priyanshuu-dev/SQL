-- ========================================
-- SQL LeetCode Practice
-- Author: Priyanshu
-- ========================================
-- Topics: Basic Queries, Aggregation, Subqueries, String Matching


-- ========================================
-- 1. Recyclable and Low Fat Products
-- Difficulty: Easy
-- Concepts: Filtering (WHERE)
-- ========================================
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';


-- ========================================
-- 2. First Login Date
-- Difficulty: Easy
-- Concepts: GROUP BY, MIN()
-- ========================================
SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;


-- ========================================
-- 3. Article Views I
-- Difficulty: Easy
-- Concepts: DISTINCT, Filtering
-- ========================================
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;


-- ========================================
-- 4. Swap Salary
-- Difficulty: Easy
-- Concepts: UPDATE, CASE
-- ========================================
UPDATE Salary
SET sex = CASE
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
END;


-- ========================================
-- 5. Duplicate Emails
-- Difficulty: Easy
-- Concepts: GROUP BY, HAVING, COUNT()
-- ========================================
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;


-- ========================================
-- 6. Patients With a Condition
-- Difficulty: Easy
-- Concepts: LIKE, String Matching
-- ========================================
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';


-- ========================================
-- 7. Customers Not Referred by ID = 2
-- Difficulty: Easy
-- Concepts: Filtering, NULL handling
-- ========================================
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;


-- ========================================
-- 8. Big Countries
-- Difficulty: Easy
-- Concepts: OR condition, Filtering
-- ========================================
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;


-- ========================================
-- 9. Invalid Tweets
-- Difficulty: Easy
-- Concepts: LENGTH(), String Functions
-- ========================================
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;


-- ========================================
-- 10. Number of Unique Subjects Taught by Each Teacher
-- Difficulty: Easy
-- Concepts: COUNT(DISTINCT), GROUP BY
-- ========================================
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;


-- ========================================
-- 11. Total Time Spent by Each Employee
-- Difficulty: Easy
-- Concepts: SUM(), GROUP BY
-- ========================================
SELECT event_day AS day, emp_id,
       SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY event_day, emp_id;


-- ========================================
-- 12. Followers Count
-- Difficulty: Easy
-- Concepts: COUNT(), GROUP BY, ORDER BY
-- ========================================
SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;


-- ========================================
-- 13. Second Highest Salary
-- Difficulty: Easy
-- Concepts: Subquery, MAX()
-- ========================================
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);