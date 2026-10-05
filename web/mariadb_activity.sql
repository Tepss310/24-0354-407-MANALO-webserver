CREATE DATABASE school;

USE school;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    year_level INT
);

INSERT INTO students (name, course, year_level)
VALUES
('Juan Dela Cruz', 'BSIT', 2),
('Maria Santos', 'BSCS', 2),
('Manalo, Stephen', 'BSIT', 3);

SELECT * FROM students;

CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(100),
    units INT
);

INSERT INTO Course (course_name, description, units)
VALUES
('CIT6', 'Capstone 1', 3),
('Soc Sci 103n', 'Contemporary world', 3),
('CC6', 'Emerging technology', 3);

SELECT * FROM Course;

/*
Guide Questions
Answer the following questions:
1. What command is used to create a database?
-CREATE DATABASE
2. What command is used to select a database?
-USE
3. What command is used to display all tables?
-SHOW TABLES;
4. What SQL command is used to add records?
INSERT INTO
5. What SQL command is used to retrieve records?
-SELECT
6. What is the purpose of the PRIMARY KEY ?
-It uniquely identifies each record in a database table and ensures the data is 
 not null and contains no duplicates.
7. What is the purpose of AUTO_INCREMENT ?
It automatically generates a unique sequential 
number for a column whenever a new record is added.
8. What is the difference between UPDATE and DELETE ?
UPDATE modifies existing data within rows, while DELETE permanently 
removes entire rows from a table.
*/
