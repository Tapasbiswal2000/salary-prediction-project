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
