/*
Adam Forestier
May 31, 2023
*/

-- 1. Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
SELECT *,
    CASE
        WHEN price > 20 THEN 'expensive'
        WHEN price <= 10 THEN 'cheap'
        ELSE 'average'
    END AS "price class"
FROM products

-- 2. Show NULL when the product is not on special (0)
SELECT 
    prod_id,
    title,
    price,
    NULLIF(special, 0) AS "Special"
FROM products;