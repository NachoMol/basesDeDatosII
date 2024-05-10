DELIMITER $$
CREATE PROCEDURE insertCategory(pname VARCHAR(50))
BEGIN
	DECLARE EXIT HANDLER FOR 1146
    BEGIN
		SELECT "no such table";
    END;
    
    INSERT INTO category VALUES(pname);
    SELECT "success";
    
END $$;
DELIMITER ;

DROP PROCEDURE insertCategory;

CALL insertCategory("value");

SELECT * FROM no_exists;