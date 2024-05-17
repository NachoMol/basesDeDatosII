CREATE FULLTEXT INDEX products_index_fulltext_name ON products(name);
ALTER TABLE products DROP INDEX products_index_fulltext_name;

SHOW INDEX FROM products;

SELECT * FROM products WHERE MATCH("name") AGAINST ("smart");