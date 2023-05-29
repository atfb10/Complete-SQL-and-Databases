/*
Adam  Forestier
May 24, 2023
*/

-- 1. What unique titles do we have?
SELECT DISTINCT(title) AS "Job Titles"
FROM titles;

-- 2. How many unique birth dates are there?
SELECT count(DISTINCT(birth_date))
FROM employees;

-- 3. Can I get a list of distinct life expectancy ages? Make sure there are no nulls
SELECT DISTINCT(lifeexpectancy)
FROM country
WHERE lifeexpectancy IS NOT NULL;