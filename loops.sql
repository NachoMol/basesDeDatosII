-- FOR
DELIMITER $$
CREATE PROCEDURE sayHelloNTimes(times INT)
BEGIN
	DECLARE counter INT DEFAULT 1;
    my_loop: LOOP
		SELECT "hello";
        SET counter = counter + 1;
        IF counter > times THEN
        LEAVE my_loop;
        END IF;
	END LOOP;
END $$;
DELIMITER ;
CALL sayHelloNTimes(0);

DROP PROCEDURE sayHelloNTimes;

-- WHILE
DELIMITER $$
CREATE PROCEDURE sayHelloNTimes(times INT)
BEGIN
	DECLARE counter INT DEFAULT 0;
    WHILE counter < times DO
    SELECT "hello";
    SET counter = counter + 1;
    END WHILE;
END $$;
DELIMITER ;

CALL sayHelloNTimes(2);
DROP PROCEDURE sayHelloNTimes;

-- REPEAT
DELIMITER $$
CREATE PROCEDURE sayHelloNTimes(times INT)
BEGIN
	DECLARE counter INT DEFAULT 1;
    
    REPEAT
		SELECT "HELLO";
        SET counter = counter + 1;
        UNTIL counter > times
	END REPEAT;
END $$;
DELIMITER ;
CALL sayHelloNTimes(2);
DROP PROCEDURE sayHelloNTimes;

    
        