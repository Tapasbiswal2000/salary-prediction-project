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

INSERT INTO employees
(employee_name, age, experience, education, city, skill, salary)
VALUES
('Rahul',24,2,'Bachelors','Bangalore','Python',45000),
('Priya',28,5,'Masters','Hyderabad','Python',85000),
('Amit',29,5,'Masters','Pune','SQL',85000),
('Neha',26,3,'Bachelors','Delhi','Power BI',60000),
('Karan',32,8,'Masters','Mumbai','Machine Learning',120000);

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT employee_name,salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

