--corelated subquery
/*
A correlated subquery is a subquery that uses the values of the outer query. In other words, the correlated subquery depends on the outer query for its values.
*/
use test
--select * from Products

select * from products order by category_id,list_price

--finds the products whose list price is equal to the highest list price of the products 
--within the same category:

SELECT category_id, MAX (list_price)
FROM  products 
GROUP BY  category_id


SELECT
    product_name,
    list_price,
    category_id
FROM
    products p1
WHERE
    list_price IN (
        SELECT
            MAX (p2.list_price)
        FROM
            products p2
        WHERE
            p2.category_id = p1.category_id
        GROUP BY
            p2.category_id
    )
ORDER BY
    category_id,
    product_name;

	/*
In this example, for each product evaluated by the outer query, the subquery finds the highest price of all products in its category.

If the price of the current product is equal to the highest price of all products in its category, the product is included in the result set. This process continues for the next product and so on.

As you can see, the correlated subquery is executed once for each product evaluated by the outer query.
*/
