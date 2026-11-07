DELIMITER $$

CREATE PROCEDURE inventory_value(OUT p_total decimal (10,2))
BEGIN
DECLARE v_price decimal(10,2);
DECLARE v_stock int;
DECLARE v_done int DEFAULT 0;
DECLARE item_cursor CURSOR FOR
	SELECT price,stock
    FROM menu_items;
    
DECLARE CONTINUE HANDLER FOR NOT FOUND
	SET v_done = 1;
    SET p_total =0;
    
    OPEN item_cursor;
    my_loop: LOOP
    
FETCH item_cursor INTO v_price,v_stock;

if v_done = 1 THEN
 	LEAVE my_loop;
END IF;

SET p_total = p_total + (v_price * v_stock);

END LOOP my_loop;
CLOSE item_cursor;
END $$

DELIMITER ;

CALL inventory_value(@total);
SELECT @total;

SELECT SUM(price * stock)AS total_inventory_value
FROM menu_items;
