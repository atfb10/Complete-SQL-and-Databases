/*
Adam Forestier
May 31, 2023
*/

-- 1. Show the population per continent
SELECT 
    "name",
    continent,
    population,
    sum(population) OVER (
        partition by continent
        order by population
        range between UNBOUNDED PRECEDING and unbounded following
    ) AS "Continent Population"
FROM country
ORDER BY "Continent Population";


-- 2. To the previous query add on the ability to calculate the percentage of the world population
SELECT 
    DISTINCT(continent),
    SUM(population) OVER (partition by continent),
    CONCAT(
        ROUND (
            SUM(population::FLOAT) OVER (PARTITION BY continent) / SUM(population::FLOAT) OVER() * 100
        ), '%'
    ) AS "Percentage of World Population"
    FROM country;

-- 3. Count the number of towns per region
SELECT DISTINCT r.id,
    r.name,
    COUNT(t.id) OVER (
        PARTITION by r.id
        ORDER BY r.name
    ) AS "# of towns"
FROM regions as r
INNER JOIN departments as d on d.region = r.code
INNER JOIN towns as t on t.department = d.code
ORDER BY r.id;