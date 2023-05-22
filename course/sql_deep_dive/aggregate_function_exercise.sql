/*
Adam Forestier
May 22, 2032
*/

-- Question 1: What is the average salary for the company?
SELECT avg( salary) as "Average Salary"
FROM salaries;

-- Question 2: What year was the youngest person born in the company?
SELECT max(birth_date) as "Youngest Birthday"
FROM employees;

-- Question 3: How many towns are there in france?
SELECT count("name") as "Number of Towns in France"
FROM towns;

-- Question 4: How many official languages are there?
SELECT count("language") as "World Language Total"
FROM countrylanguage;

-- Question 5: What is the average life expectancy in the world?
SELECT avg(lifeexpectancy) as "Average Life Expectancy"
FROM country;

-- Question 6: What is the average population for cities in the netherlands?
SELECT avg(lifeexpectancy) as "Average Life Expectancy in Holland"
FROM country
WHERE country.name = 'Netherlands';