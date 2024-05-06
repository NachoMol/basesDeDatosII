SET @stock = 10;

SELECT @stock;

SET @stock = 5;

SELECT * FROM products WHERE stock > @stock;

-- Variables en store procedures
DELIMITER $$
CREATE PROCEDURE addThings()
BEGIN
	DECLARE val1 INT default 1;
    SET @val2 = 2;
    SELECT @val2 + val1;
END
DELIMITER ;

CALL addthings();

-- Variables en funciones
DELIMITER $$
CREATE FUNCTION avgOfTwoNumbers(num1 INT,  num2 INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
	DECLARE calc FLOAT;
    SET calc = (num1 + num2) / 2;
    RETURN calc;
END
DELIMITER ;

SELECT avgOfTwoNumbers(10,50);