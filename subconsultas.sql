SELECT
p.name, 
(SELECT COUNT(id) FROM carts AS c WHERE p.id = c.product_id
AND c.created_at BETWEEN "2023-07-01" AND "2023-07-31"),
(SELECT COUNT(id) FROM carts AS c WHERE p.id = c.product_id
AND c.created_at BETWEEN "2023-01-01" AND "2023-01-31")
FROM products as p;