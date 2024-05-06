SELECT id, name, stock,
	IF(stock < 10, "warning", "good") AS ifFlag,
    CASE
		WHEN STOCK < 10 then "warning"
        WHEN stock < 30 then "good"
        ELSE "on-sale" END AS caseFLag
FROM products;