/*
Adam Forestier
May 24, 2023
*/

-- 1. Question: How many orders were made by customer 7888, 1082, 12808, 9623
SELECT *
FROM orders
WHERE customerid IN(7888, 1082, 12808, 9623);

-- 2. Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
SELECT count(id)
FROM city
WHERE district IN('Zuid-Holland', 'Noord-Brabant', 'Utrecht');