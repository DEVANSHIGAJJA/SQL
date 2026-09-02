CREATE DATABASE SCHOOLDB;

USE SCHOOLDB;

CREATE TABLE STUDENTS(
STUDENT_ID INT PRIMARY KEY,
STUDENT_NAME VARCHAR (50),
AGE INT,
COURSE VARCHAR(50),
MARKS DECIMAL(5,2)
);

SELECT * FROM STUDENTS;

INSERT INTO STUDENTS(STUDENT_ID,STUDENT_NAME,AGE,COURSE,MARKS)
VALUES
(1, 'Amit Sharma', 21, 'Data Analytics', 85.50),
(2, 'Neha Gupta', 22, 'Computer Science', 90.75),
(3, 'Ravi Singh', 20, 'Business Analytics', 78.25),
(4, 'Aman Sharma', 24, 'Data Analytics', 88.50),
(5, 'Nirav Gupta', 22, 'Computer Science', 95.75),
(6, 'Raj Singh', 20, 'Business Analytics', 70.25);

SELECT * FROM STUDENTS;

CREATE TABLE Employees (
    EMPID INT PRIMARY KEY,
    EMPNAME VARCHAR(100),
    SALARY DECIMAL(10,2),
    JOININGDATE DATE,
    ISACTIVE BOOLEAN
);