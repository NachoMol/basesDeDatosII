-- Traer todos los productos y sus categorias
SELECT products.name , stock, categories.name
FROM products
JOIN categories ON category_id = categories.id;