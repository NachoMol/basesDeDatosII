SELECT id, name, stock,
	IF(stock < 10, "warning", "good") AS ifFlag,
    CASE
		WHEN STOCK < 10 then "warning"
        WHEN stock < 30 then "good"
        ELSE "on-sale" END AS caseFLag
FROM products;

-- implementando condicionales en functions
DELIMITER $$
CREATE FUNCTION divTwoNumbers(num1 INT, num2 INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
	DECLARE calc FLOAT DEFAULT 0;
    IF num2 <> 0 THEN
		SET calc = num1 / num2;
	END IF;
    RETURN calc;
END $$
DELIMITER ;
SELECT divTwoNumbers(2,2);

DROP FUNCTION divTwoNumbers;