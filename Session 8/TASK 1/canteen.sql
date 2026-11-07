DROP DATABASE IF EXISTS canteen_db;

CREATE DATABASE canteen_db;
use canteen_db;

CREATE  TABLE menu_items

(citem_id int PRIMARY KEY,
item_name varchar(100),
price decimal(10,2),
stock int) ;

INSERT INTO menu_items (item_id,item_name,price,stock)
VALUES
(1,'samosa',100,0),
(2,'sandwich',200,20),
(3,'burger',150,50),
(4,'coffee',50,70),
(5,'tea',30,90);

CREATE  TABLE orders
(order_id int AUTO_INCREMENT PRIMARY KEY,
 item_id int,
 quantity int,
 order_date date,
FOREIGN KEY (item_id)
REFERENCES menu_items(item_id) );
