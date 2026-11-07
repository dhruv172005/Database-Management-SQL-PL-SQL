DELIMITER $$

CREATE PROCEDURE SHOW_item_status(IN p_item_id int)
BEGIN
	DECLARE v_stock INT;
    
    SELECT stock
    INTO v_stock
    FROM menu_items
    WHERE item_id = p_item_id;
    
    IF v_stock = 0 THEN
    	SELECT 'out of stock' AS
        item_status;
        
    ELSEIF v_stock = 20 THEN
    	SELECT 'low stock' AS item_status;
        
    ELSE 
    	SELECT 'in stock' as item_status;
        
        END IF;
END $$

DELIMITER;


CALL SHOW_item_status (1);
CALL SHOW_item_status (2);
CALL SHOW_item_status (3);