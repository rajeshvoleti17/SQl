/* RAJESHWAR VOLETI
USN : 21BTRCD055
*/
CREATE DATABASE Experiment_03;
USE Experiment_03;
CREATE TABLE employees (
employee_id INT PRIMARY KEY, 
name VARCHAR(50) NOT NULL,
department VARCHAR(50) NOT NULL, 
job_title VARCHAR(50) NOT NULL, 
hire_date DATE NOT NULL,
salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO employees (employee_id, name, department, job_title, hire_date, salary)
VALUES
(1, 'John Doe', 'Marketing', 'Marketing Manager', '2022-01-01', 75000),
(2, 'Jane Doe', 'Sales', 'Sales Manager', '2022-02-01', 80000),
(3, 'Jim Smith', 'IT', 'IT Manager', '2022-03-01', 90000);

SELECT * FROM employees;

CREATE VIEW Employee_Information AS
SELECT name, employee_id
FROM employees;

SELECT * FROM Employee_Information;