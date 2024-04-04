-- Traer todos los productos y sus categorias
SELECT p.name , stock, c.name
FROM products AS p
JOIN categories AS c ON category_id = c.id;