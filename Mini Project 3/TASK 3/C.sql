DELIMITER $$
CREATE PROCEDURE monthly_fee_summary
(IN p_month INT,
IN p_year INT)

BEGIN
  
  SELECT
  	c.course_name,
    COUNT(p.payment_id) AS total_payments,
    SUM(p.amount) AS total_collected
    
    FROM courses c
    
    INNER JOIN payments p 
    	ON c.course_id = p.course_id
        WHERE month(p.paid_on) = p_month
        AND year(p.paid_on)= p_year
        GROUP BY c.course_id,c.course_name;
        
   SELECT 
   	SUM(amount) AS grand_total
    FROM payments
    WHERE month(paid_on)= p_month
    and year(paid_on)=p_year;
    
    END $$
    
    DELIMITER ;


CALL monthly_fee_summary(10,2026);
