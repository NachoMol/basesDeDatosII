DELIMITER $$
CREATE PROCEDURE insertCategory(pname VARCHAR(50))
BEGIN
	DECLARE error_duplicated CONDITION FOR 1062;
    DECLARE EXIT HANDLER FOR error_duplicated
    
		BEGIN
			SELECT "CATEGORY ALREADY EXISTS";
        END;
        INSERT INTO categories (name) VALUES (pname);
    
END $$
DELIMITER ;

DROP PROCEDURE insertCategory;
CALL insertCategory("electronics");

