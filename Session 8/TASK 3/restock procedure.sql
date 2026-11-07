DELIMITER $$

CREATE PROCEDURE restock_all(IN amount_to_add INT)
BEGIN
    DECLARE v_counter INT DEFAULT 1;

    my_loop: LOOP

        IF v_counter > 6 THEN
            LEAVE my_loop;
        END IF;

        UPDATE menu_items
        SET menu_items.stock = menu_items.stock + amount_to_add
        WHERE item_id = v_counter;

        SET v_counter = v_counter + 1;

    END LOOP my_loop;

END $$

DELIMITER ;


CALL restock_all(25);

SELECT * FROM menu_items;