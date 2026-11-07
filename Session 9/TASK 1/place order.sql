USE canteen_db;

DROP PROCEDURE IF EXISTS place_order;

DELIMITER $$

CREATE PROCEDURE place_order
(IN p_item_id int,
 IN p_qty int)
 
 BEGIN
 	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    
  BEGIN
  	ROLLBACK;
    SELECT 'order failed' AS massage;
    
    END;
    
    START TRANSACTION;
    
    INSERT INTO orders (item_id,quantity,order_date)
    	VALUES(p_item_id,p_qty,curdate());
        
    UPDATE menu_items
    SET stock = stock - p_qty
    WHERE item_id = p_item_id;
    
    COMMIT;
    
    SELECT 'order succesful' AS message;
    
    END $$
    
    DELIMITER;

CALL place_order(1,2);
SELECT * FROM orders;
SELECT * FROM menu_items;

CALL place_order(99,2);
SELECT * FROM orders;