/*
Adam Forestier
May 29, 2023
*/

-- 1. How many people were hired on any given hire date?
SELECT hire_date, COUNT(emp_no) as "Number Hired"
FROM employees
GROUP BY hire_date
ORDER BY "Number Hired" DESC;

-- 2. Show me all the employees, hired after 1991 and count the amount of positions they've had
SELECT e.emp_no, COUNT(t.title) AS "Number of Titles"
FROM employees as e
INNER JOIN titles as t on t.emp_no = e.emp_no
WHERE (EXTRACT(YEAR FROM e.hire_date) > 1991)
GROUP BY e.emp_no
ORDER BY "Number of Titles" DESC;

-- 3. Show me all the employees that work in the department development and the from and to date.
SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
JOIN dept_emp as de USING(emp_no)
WHERE de.dept_no = 'd005'
order by e.emp_no, de.to_date;