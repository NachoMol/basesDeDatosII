-- Traer todos los productos y sus categorias
SELECT p.name AS product_name, p.stock, c.name AS category_name
FROM products AS p
JOIN categories AS c ON p.category_id = c.id;