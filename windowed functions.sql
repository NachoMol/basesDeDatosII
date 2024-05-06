-- Obtener un listado de productos y adicionar en cada fila la posicion segun la categoria
SELECT
name, category_id
,ROW_NUMBER() OVER (w order by category_id, name) AS orderByCategory
, SUM(stock) OVER(w) AS categoryStock
, LAG(name) OVER(w order by category_id, name)
FROM products
WINDOW w AS (PARTITION BY category_id)
ORDER BY category_id, name ASC
