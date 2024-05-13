SELECT
p.name
FROM products AS p
WHERE EXISTS (SELECT id FROM carts AS c WHERE c.product_id = p.id)