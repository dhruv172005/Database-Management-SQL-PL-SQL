--SCENARIO 1: VALID ORDER TEST


SELECT FROM menu_items 
WHERE item_id = 1;

INSERT INTO orders (item_id,quantity,order_date)
VALUES (1,2,curdate());

SELECT * FROM menu_items 
WHERE item_id= 1;

------------------------------------------------------

--SCENARIO 2: TRANSECTION ROLLBACK TEST

START TRANSACTION;

INSERT INTO orders (item_id,quantity,order_date)
VALUES(2,3,curdate());

SELECT * FROM menu_items 
WHERE item_id =2;

ROLLBACK;

SELECT * FROM menu_items 
WHERE item_id =2;


------------------------------------------------------

--SCENARIO 3: INVALID ITEM TEST

CALL place_order (99,2);

SELECT * FROM menu_items;
