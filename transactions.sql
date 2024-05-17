START TRANSACTION;

INSERT INTO products VALUES (default, "product with trans",100,1,"","",1,NOW(),NOW());

COMMIT;

SELECT * FROM products order by ID desc;