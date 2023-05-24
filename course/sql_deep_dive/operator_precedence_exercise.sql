/*
Adam Forestier
May 23, 2023
*/

-- 1. Select people either under 30 or over 50 with an income above 50000 that are from either Japan or Australia
SELECT *
FROM customers
WHERE (age < 30 OR age > 50)
AND income > 50000
AND (country = 'Japan' or country = 'Australia');

-- 2. What was our total sales in June of 2004 for orders over 100 dollars?
SELECT sum(totalamount)
FROM orders
WHERE totalamount > 100.00
AND (orderdate >= '2004-06-01' AND orderdate <= '2004-06-30');