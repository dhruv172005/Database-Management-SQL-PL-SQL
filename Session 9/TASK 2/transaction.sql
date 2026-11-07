USE canteen_db;

START TRANSACTION;

INSERT INTO orders (item_id,quantity,order_date)
VALUES(1,2,curdate());

INSERT INTO orders (item_id,quantity,order_date)
VALUES(2,3,curdate());

SAVEPOINT BEFORE_mistake;

INSERT INTO orders (item_id,quantity,order_date)
VALUES(1,500,curdate());

ROLLBACK TO SAVEPOINT BEFORE_mistake;

COMMIT;

SELECT * FROM orders;