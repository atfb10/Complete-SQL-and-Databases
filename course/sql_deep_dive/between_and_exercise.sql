/*
Adam Forestier
May 24, 2023
*/

-- 1. Who between the ages of 30 and 50 has an income less than 50 000?
SELECT * 
from customers
where (age BETWEEN 30 AND 50)
AND (income < 50000);

-- 2.  What is the average income between the ages of 20 and 50? (Including 20 and 50)
SELECT avg( income) as "Average Income"
FROM customers
WHERE age BETWEEN 20 AND 50;