-- 1. DATABASE SETUP
CREATE DATABASE IF NOT EXISTS marks;
USE marks;

-- 2. CREATE AND POPULATE STUDENT TABLE
DROP TABLE IF EXISTS student_data;
CREATE TABLE student_data (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student_data (student_id, name) VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

-- 3. CREATE AND POPULATE COURSES TABLE
DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
    student_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO courses (student_id, course) VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'cse');

-- 4. BASIC SELECTIONS
SELECT * FROM student_data;
SELECT * FROM courses;

---
-- JOIN OPERATIONS
---

-- INNER JOIN: Returns only records where there is a match in both tables
-- (Only Bob and Casey)
SELECT *
FROM student_data AS s
INNER JOIN courses AS c 
    ON s.student_id = c.student_id;

-- LEFT JOIN: All records from student_data, plus matches from courses
-- (Includes Adam with NULL course info)
SELECT *
FROM student_data AS s
LEFT JOIN courses AS c 
    ON s.student_id = c.student_id;

-- RIGHT JOIN: All records from courses, plus matches from student_data
-- (Includes Math and CSE with NULL student names)
SELECT *
FROM student_data AS s
RIGHT JOIN courses AS c 
    ON s.student_id = c.student_id;

-- FULL JOIN (Emulated via UNION): Returns all records from both tables
SELECT * FROM student_data AS s LEFT JOIN courses AS c ON s.student_id = c.student_id
UNION
SELECT * FROM student_data AS s RIGHT JOIN courses AS c ON s.student_id = c.student_id;

---
-- EXCLUSIVE JOINS (Using WHERE IS NULL)
---

-- LEFT EXCLUSIVE JOIN: Students who are NOT enrolled in any course
SELECT *
FROM student_data AS s
LEFT JOIN courses AS c ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- RIGHT EXCLUSIVE JOIN: Courses that have NO students enrolled
SELECT *
FROM student_data AS s
RIGHT JOIN courses AS c ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- FULL EXCLUSIVE JOIN: Returns records unique to either table 
-- (Excludes the overlapping matches)
SELECT *
FROM student_data AS s
LEFT JOIN courses AS c ON s.student_id = c.student_id
WHERE c.student_id IS NULL
UNION
SELECT *
FROM student_data AS s
RIGHT JOIN courses AS c ON s.student_id = c.student_id
WHERE s.student_id IS NULL;








