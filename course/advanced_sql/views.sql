/*
Adam Forestier
June 1, 2023
*/

-- 1. Show me all the employees, hired between 1990 and 1995
CREATE OR REPLACE VIEW "10-95" AS
SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) BETWEEN 1990 AND 1995
ORDER BY hire_date;

-- 2. Shows me all employees that have ever had a salary over 80000
CREATE OR REPLACE VIEW "bigbucks" AS 
SELECT DISTINCT(concat(e.first_name, ' ', e.last_name)) as "Name"
FROM employees as e
JOIN salaries AS s USING(emp_no)
WHERE s.salary > 80000;