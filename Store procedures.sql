-- crear
DELIMITER $$
CREATE PROCEDURE sumNumbers(IN num1 INT,IN num2 INT)
BEGIN
-- instrucciones sql

	SELECT num1 + num2;

END$$
DELIMITER ;

-- llamar
CALL sumNumbers(10,20);

-- eliminar

DROP PROCEDURE sumNumbers;

-- consultar mis procedures
SHOW PROCEDURE status WHERE Db = database() AND Type = "PROCEDURE"