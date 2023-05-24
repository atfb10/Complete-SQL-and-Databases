/*
Adam Forestier
May 24, 2023
*/

-- 1. Find the age of all employees who's name starts with M.
SELECT first_name, EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees
WHERE first_name LIKE 'M%';

-- 2. How many people's name start with A and end with R?
SELECT count(emp_no) as "Count"
FROM employees
WHERE first_name LIKE 'A%r';

-- 3. Find the age of all employees who's name starts with M.
SELECT count(customerid) as "Count"
FROM customers
WHERE zip::text LIKE '%2%';

-- 4. Find the age of all employees who's name starts with M.
SELECT COUNT(customerid)
FROM customers
WHERE zip::text LIKE '2_1%';

-- 5. Which states have phone numbers starting with 302? Replace null values with "No State"
SELECT COALESCE(state, 'No State') as "State", phone
FROM customers
WHERE phone::text LIKE '302%';