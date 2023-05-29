/*
Adam Forestier
May 28, 2023
*/

-- 1. Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
SELECT a.customerid, a.firstname, a.lastname, b.orderid, b.totalamount
FROM customers as a
INNER JOIN orders as b on b.customerid = a.customerid
where (a.state = 'OH')
OR (a.state = 'NY')
or (a.state = 'OR')
ORDER BY b.orderid;

-- 2. Show me the inventory for each product
SELECT a.title, b.quan_in_stock
FROM products as a
INNER JOIN inventory as b on b.prod_id = a.prod_id
order by b.quan_in_stock DESC;

-- 3. Show me for each employee which department they work in
SELECT concat(a.first_name, ' ', a.last_name) as "Name", c.dept_name
FROM employees as a
INNER JOIN dept_emp as b on b.emp_no = a.emp_no
INNER JOIN departments as c ON c.dept_no = b.dept_no
order by c.dept_name;