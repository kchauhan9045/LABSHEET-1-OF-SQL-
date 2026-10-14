CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;
CREATE TABLE IF NOT EXISTS Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Course VARCHAR(100),
    City VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100) NOT NULL,
    Department VARCHAR(100),
    Salary DECIMAL(10,2),
    Email VARCHAR(255) UNIQUE
);
CREATE TABLE IF NOT EXISTS Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    Quantity INT NOT NULL DEFAULT 0 CHECK (Quantity >= 0)
);
CREATE TABLE IF NOT EXISTS Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Duration VARCHAR(50),
    Fees DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(100) NOT NULL,
    Subject VARCHAR(100),
    Salary DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS Library (
    Book_ID INT PRIMARY KEY,
    Book_Name VARCHAR(200) NOT NULL,
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS Student_Constraint_Example (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);
ALTER TABLE Student ADD COLUMN IF NOT EXISTS Email VARCHAR(255);
ALTER TABLE Student ADD COLUMN IF NOT EXISTS Phone VARCHAR(20);
ALTER TABLE Student MODIFY COLUMN Name VARCHAR(150) NOT NULL;
ALTER TABLE Employee ADD COLUMN IF NOT EXISTS Salary DECIMAL(10,2);
CREATE TABLE IF NOT EXISTS Student_Complete (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 16),
    Email VARCHAR(255) UNIQUE,
    Course VARCHAR(100),
    Address VARCHAR(150),
    CONSTRAINT chk_student_age CHECK (Age IS NULL OR Age >= 16)
);
INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES
    (1, 'Aarav Sharma', 19, 'BCA', 'Delhi'),
    (2, 'Meera Singh', 20, 'BSc IT', 'Jaipur')
ON DUPLICATE KEY UPDATE Name = VALUES(Name);

INSERT INTO Employee (Emp_ID, Emp_Name, Department, Salary, Email)
VALUES
    (101, 'Rohan Verma', 'IT', 35000.00, 'rohan@example.com'),
    (102, 'Priya Gupta', 'HR', 32000.00, 'priya@example.com')
ON DUPLICATE KEY UPDATE Emp_Name = VALUES(Emp_Name);
SHOW TABLES;
SELECT * FROM Student;
SELECT * FROM Employee;
 