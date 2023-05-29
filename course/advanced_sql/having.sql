/*
Adam Forestier
May 29, 2023
*/

-- 1. Show me all the employees, hired after 1991, that have had more than 2 titles
SELECT e.emp_no, count(t.title) AS "Number of jobs"
FROM employees as e
inner join titles as t on t.emp_no = e.emp_no
WHERE (EXTRACT(YEAR FROM e.hire_date) > 1991)
GROUP BY e.emp_no
HAVING count(t.title) > 2
ORDER BY e.emp_no;

-- 2. Show me all the employees that have had more than 15 salary changes that work in the department development
SELECT e.emp_no, count(s.salary) as "Total Raises"
FROM employees AS e
JOIN salaries AS s USING(emp_no)
JOIN dept_emp AS de using(emp_no)
WHERE de.dept_no = 'd0005'
GROUP BY e.emp_no
HAVING count(s.salary) > 15
ORDER BY e.emp_no;

-- 3. Show me all the employees that have worked for multiple 
SELECT e.emp_no, count(de.dept_no) AS "Departments Worked"
FROM employees AS e
JOIN dept_emp AS de USING(emp_no)
GROUP BY e.emp_no
HAVING count(de.dept_no) > 1
ORDER BY e.emp_no;