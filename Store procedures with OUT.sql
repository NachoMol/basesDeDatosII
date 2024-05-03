-- crear
DELIMITER $$
CREATE PROCEDURE setOne(OUT value int)
BEGIN
-- instrucciones sql

	SET value = 1;

END$$
DELIMITER ;

-- llamar
CALL setOne(@another);
SELECT @another;

-- eliminar

DROP PROCEDURE setOne;

-- consultar mis procedures
SHOW PROCEDURE status WHERE Db = database() AND Type = "PROCEDURE"