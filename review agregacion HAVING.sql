-- Totales y promedios segun category
SELECT COUNT(id), AVG(price)
FROM products
WHERE category_id = 3;

-- Totales y promedios por category
SELECT category_id, COUNT(id), AVG(price)
FROM products
GROUP BY category_id;