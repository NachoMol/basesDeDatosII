DELIMITER $$
CREATE PROCEDURE sayHelloNTimes(times INT)
BEGIN
	DECLARE counter INT DEFAULT 0;
    my_loop: LOOP
		SELECT "hello";
        set counter = counter + 1;
        IF counter > times THEN
        LEAVE my_loop;
        END IF;
	END LOOP;
END $$;
DELIMITER ;
CALL sayHelloNTimes(3);

DROP PROCEDURE sayHelloNTimes;