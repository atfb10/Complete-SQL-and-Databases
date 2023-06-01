/*
Adam Forestier
June 1, 2023
*/

/* TRY TO WRITE THESE AS JOINS FIRST */

-- 1. Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state, ordered by orderid
SELECT c.firstname, c.lastname, o.orderid
FROM orders as o, (
    SELECT customerid, state, firstname, lastname
    FROM customers
) as c
WHERE o.customerid = c.customerid AND 
c.state IN ('NY', 'OR', 'OH')
ORDER BY o.orderid;

-- 2. Filter employees who have emp_no 110183 as manager
SELECT e.emp_no, e.first_name, e.last_name
FROM employees as e
JOIN dept_emp as de using(emp_no)
join dept_manager as md using(dept_no)
WHERE md.emp_no = 110183;