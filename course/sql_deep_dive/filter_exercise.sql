/*
Adam Forestier
May 22, 2023
*/

-- Question 1 -- How many female custoemrs do we have from the state of Oregon And New York
SELECT count(customerid)
FROM customers
WHERE gender = 'F'
AND (state = 'OR' OR state = 'NY');