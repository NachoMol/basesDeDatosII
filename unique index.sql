CREATE UNIQUE INDEX products_index_name ON products(name);
ALTER TABLE products DROP INDEX products_index_name;

SHOW INDEX FROM products;

SELECT count(id) from products;