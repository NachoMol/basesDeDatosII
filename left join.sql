-- Users y sus carts
SELECT u.email, c.product_id, c.quantity, p.name AS product_name
FROM users AS u
LEFT JOIN carts AS c ON u.id = c.user_id
LEFT JOIN products as p ON c.product_id = p.id
ORDER BY p.name , c.quantity;