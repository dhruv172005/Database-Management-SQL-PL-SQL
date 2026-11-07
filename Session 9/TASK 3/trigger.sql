DROP TRIGGER if EXISTS trg_reduce_stock;

DELIMITER $$

CREATE TRIGGER trg_reduce_stock
AFTER INSERT ON orders
FOR EACH ROW
BEGIN

UPDATE menu_items
SET stock = stock - new.quantity 
WHERE item_id= new.item_id;

END

DELIMITER ;

INSERT INTO orders (item_id,quantity,order_date)
VALUES (1,3,curdate());

---------------------------------------------------

DROP PROCEDURE if EXISTS place_order;

DELIMITER //

CREATE PROCEDURE place_order(
	in p_item_id int,
    in p_qty int)
    
BEGIN 
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    
BEGIN 
	ROLLBACK;
    SELECT 'order failed' AS massage;
    
    END;
    
    START TRANSACTION;
    
    INSERT INTO orders(item_id,quantity,order_date)
    VALUES (p_item_id , p_qty,curdate());
    
    COMMIT;
    SELECT 'order successful' AS massage;
    
    end //
    
    DELIMITER ;


---- TESTING ------- 

SELECT * FROM menu_items;

CALL place_order(1,3);

SELECT * FROM menu_items;