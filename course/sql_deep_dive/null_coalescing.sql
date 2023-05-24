-- 1. Assuming a student's minimum age for the class is 15, what is the average age of a student?
SELECT avg(coalesce(age, 15)) AS "Average Age"  
from "Student";

-- 2. Replace all empty first or last names with a default
SELECT coalesce(name, 'none') AS "First Name",
coalesce(lastName, 'none') AS "Last Name" 
from "Student";