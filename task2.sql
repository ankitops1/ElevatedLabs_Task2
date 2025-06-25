CREATE DATABASE IF NOT EXISTS StudentCourseDB;
USE StudentCourseDB;

DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor_name VARCHAR(100)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students (student_id, name, email, phone) VALUES
(1, 'ankit', 'ankit@gmail.com', '9876543210'),
(2, 'shruti', NULL, '9123456780'),
(3, 'ansh', 'charlie@example.com', NULL),
(4, 'tanshu', NULL, NULL);

INSERT INTO Courses (course_id, course_name, instructor_name) VALUES
(101, 'Mathematics', 'Dr. Alpana'),
(102, 'Physics', NULL),
(103, 'Chemistry', 'Dr. Meera'),
(104, 'English Literature', NULL);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) VALUES
(1, 1, 101, '2024-01-10', 'A'),
(2, 2, 102, '2024-01-12', NULL),
(3, 3, 103, '2024-01-15', 'B'),
(4, 4, 101, '2024-01-17', NULL),
(5, 2, 104, '2024-01-20', 'C');

SET SQL_SAFE_UPDATES = 0;

UPDATE Students SET email = CONCAT(SUBSTRING_INDEX(name, ' ', 1), '@example.com') WHERE email IS NULL;
UPDATE Students SET phone = '0000000000' WHERE phone IS NULL;
UPDATE Courses SET instructor_name = 'TBD' WHERE instructor_name IS NULL;
UPDATE Enrollments SET grade = 'P' WHERE grade IS NULL;

DELETE FROM Students WHERE phone = '0000000000' AND student_id NOT IN (SELECT DISTINCT student_id FROM Enrollments);
DELETE FROM Enrollments WHERE enrollment_date < '2024-01-01';

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

