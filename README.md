# 📊 SQL Mastery: Database Design & Query Logic

Welcome to my SQL repository! This project serves as a comprehensive collection of my database scripts, ranging from schema design to advanced data manipulation and relationship mapping.

## 🚀 Project Overview
The goal of this repository is to demonstrate proficiency in **Relational Database Management Systems (RDBMS)**. It includes practical implementations of:
* **Data Definition Language (DDL):** Creating structured tables with Primary and Foreign keys.
* **Data Manipulation Language (DML):** Efficiently inserting and updating records.
* **Complex Joins:** Mastering the relationships between datasets (Inner, Left, Right, Full, and Exclusive).
* **Data Integrity:** Ensuring constraints and handling NULL values effectively.

---

## 📂 Core Module: Student & Course Management
One of the primary demonstrations in this repo is the `marks` database, which explores the relationship between students and their academic enrollments.

### 🧩 The Schema
* **`student_data`**: Stores core identity information (`student_id`, `name`).
* **`courses`**: Stores enrollment data linked via `student_id`.

### 🔍 Key Implementation: SQL Joins
I have implemented a full suite of JOIN operations to analyze how data interacts across tables:

| Join Type | Description | Purpose |
| :--- | :--- | :--- |
| **Inner Join** | Intersection of both tables | Find students with active enrollments. |
| **Left Join** | All students + matches | Identify all students, regardless of enrollment. |
| **Right Join** | All courses + matches | Identify all courses, including those without students. |
| **Full Join** | Union of all records | Get a complete map of the entire department. |
| **Exclusive Join**| `WHERE IS NULL` logic | Find "Orphan" records (e.g., students with no courses). |



## 🛠️ Tech Stack & Tools
* **Language:** SQL (Structured Query Language)
* **Flavor:** MySQL / PostgreSQL
* **Tools:** MySQL Workbench, Command Line Interface

## 📈 How to Run the Scripts
1. Clone the repository:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git)
