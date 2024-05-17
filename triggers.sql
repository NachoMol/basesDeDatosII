DELIMITER $$
CREATE TRIGGER setUserPass BEFORE INSERT ON users
FOR EACH ROW
BEGIN

	SET NEW.password = NEW.email;

END $$;
DELIMITER ;

INSERT INTO users (username,email) VALUES ("test10", "test10@test.com");

SELECT * FROM users ORDER BY created_at DESC LIMIT 3;

DROP TRIGGER setUserPass;