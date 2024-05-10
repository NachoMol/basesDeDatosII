DELIMITER $$
CREATE PROCEDURE executeCartByUser(pUserId INT)
BEGIN
	DECLARE cartId, pID, quan INT;
	DECLARE done INT DEFAULT FALSE;
    DECLARE cart CURSOR FOR SELECT id, product_id, quantity FROM carts WHERE user_id = pUserId;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE = TRUE;
	OPEN cart;
		my_loop: LOOP
		FETCH cart INTO cartId, pID, quan;
        IF done THEN LEAVE my_loop; END IF;
        UPDATE products SET stock = stock - quan WHERE id = pID;
        DELETE FROM carts WHERE id = cartId;
		END LOOP;
	CLOSE cart;
    SELECT "success";
END $$
DELIMITER ;

CALL executeCartByUser(1);

DROP PROCEDURE executeCartByUser;

SELECT user_id, product_id, quantity FROM carts WHERE user_id = 1;

SELECT id, name, stock FROM products WHERE id = 57;