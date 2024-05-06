-- Obtener un listado de productos y adicionar en cada fila la posicion segun la categoria
SELECT
name, category_id
,ROW_NUMBER() OVER (PARTITION BY category_id order by category_id, name) AS orderByCategory
, SUM(stock) OVER(PARTITION BY category_id) AS categoryStock
FROM products
ORDER BY category_id, name;