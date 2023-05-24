/*
Adam Forestier
May 24, 2023
*/

-- 1. Question: adjust the following query to display the null values as "No Address"
SELECT COALESCE(address2, 'No Address') AS "Address 2"
FROM customers;

-- 2. Question: Fix the following query to apply proper 3VL
SELECT *
FROM customers
WHERE address2 IS NOT null;

-- 3. Question: Fix the following query to apply proper 3VL
SELECT coalesce(lastName, 'Empty'), * from customers
where (age IS null);