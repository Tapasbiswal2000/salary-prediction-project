CREATE DATABASE IF NOT EXISTS salary_prediction;

USE salary_prediction;

CREATE TABLE employees(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    age INT,
    experience INT NOT NULL,
    education VARCHAR(50),
    city VARCHAR(50),
    skill VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE prediction_logs(
    prediction_id INT PRIMARY KEY AUTO_INCREMENT,
    prediction_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    experience INT,
    education VARCHAR(50),
    city VARCHAR(50),
    predicted_salary DECIMAL(10,2)
);

