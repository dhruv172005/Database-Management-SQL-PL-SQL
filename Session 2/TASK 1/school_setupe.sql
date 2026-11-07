CREATE DATABASE IF NOT EXISTS
school_db;

USE school_db;

CREATE TABLE IF NOT EXISTS students(
    roll_no INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    class VARCHAR(10),
    city VARCHAR(30));
    
DESCRIBE students;