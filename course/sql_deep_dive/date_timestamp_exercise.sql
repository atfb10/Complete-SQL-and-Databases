/*
Adam Forestier
May 24, 2023
*/

-- 1. Get all employes above 60
SELECT AGE(birth_date), *
FROM employees
WHERE (
    EXTRACT (YEAR FROM AGE(birth_date))
) > 60;

-- 2. How many employees where hired in February?
SELECT count(birth_date)
FROM employees
WHERE EXTRACT(MONTH FROM hire_date) = 02;

-- 3. How many employees were born in november?
SELECT count(emp_no)
FROM employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;

-- 4. Who is the oldest employee? (Use the analytical function MAX)
SELECT max(age(birth_date))
FROM employees;

-- 5. How many orders were made in January 2004?
SELECT count(*)
from orders
WHERE (
    EXTRACT(MONTH FROM orderdate) = 01
    AND EXTRACT(YEAR FROM orderdate) = 2004
);