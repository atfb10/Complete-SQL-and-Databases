/*
Adam Forestier
May 24, 2023
*/

-- 1. Sort employees by first name ascending and last name descending
SELECT *
FROM employees
order by first_name, last_name DESC;

-- 2. Sort employees by age
SELECT AGE(birth_date) AS "Age", *
FROM employees
order by (AGE(birth_date)) DESC;

-- 3. Sort employees who's name starts with a "k" by hire_date
SELECT *
FROM employees
WHERE first_name LIKE 'K%'
order by hire_date;