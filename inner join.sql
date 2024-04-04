-- Traer todos los productos y sus categorias
SELECT p.name , p.stock, c.name
FROM products AS p
JOIN categories AS c ON p.category_id = c.id;