/*
Adam Forestier
May 22, 2023
*/


-- 1. How many female customers do we have from the state of Oregon (OR)?
SELECT count(customerid)
FROM customers
WHERE gender = 'F'
AND state = 'OR';

-- 2. Who over the age of 44 has an income of 100 000 or more?
SELECT *
FROM customers
WHERE age > 44
AND income >= '100000';

-- 3. Who between the ages of 30 and 50 has and income of less than 50 000?


-- 4. What is the average income between the ages of 20 and 50?
SELECT avg(income) AS "Average Income"
FROM customers
WHERE (age >= 20 AND age <= 50);