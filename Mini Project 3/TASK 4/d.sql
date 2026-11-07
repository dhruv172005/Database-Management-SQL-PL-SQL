--------------------------------------------
----------------TASK 1----------------------

CREATE TABLE studens(
student_id int PRIMARY KEY,
name varchar(100) not null,
class varchar(100) not null,
city varchar(100) not null);

CREATE TABLE courses(
course_id int PRIMARY KEY,
course_name varchar(100) NOT null,
monthly_fee int NOT null);

CREATE TABLE payments(
    payment_id int AUTO_INCREMENT PRIMARY KEY,
    student_id int NOT null,
    course_id int NOT null,
    amount int NOT null,
    paid_on date NOT null,

FOREIGN KEY (student_id)
REFERENCES students (student_id),

FOREIGN KEY (course_id)
REFERENCES courses(course_id));

----------------------------------------------------
-------------------TASK 2---------------------------


INSERT INTO students (student_id,name,class,city)
VALUES
(1,'dhruv','10','ahemdabad'),
(2,'dharmik','12','surat'),
(3,'krishil','11','bhavanagr'),
(4,'jay','10','vadodra'),
(5,'vishwas','12','rajkot');

INSERT INTO courses(course_id,course_name,monthly_fee)
VALUES
(1,'c LANGUAGE',1000),
(2,'c++',1200),
(3,'paython',1500);

INSERT INTO payments (student_id,course_id,amount,paid_on)
VALUES
(1,1,800,'2026-10-01'),
(2,2,1000,'2026-10-02'),
(3,3,1200,'2026-10-03'),
(4,1,1400,'2026-10-04'),
(5,2,1600,'2026-10-05'),
(1,3,1800,'2026-10-06'),
(2,1,2000,'2026-10-07'),
(3,2,2200,'2026-10-08'),
(4,3,2400,'2026-10-09'),
(5,3,2600,'2026-10-10');


UPDATE payments
SET amount = 900
WHERE payment_id = 1;

SELECT * FROM payments
WHERE payment_id = 1;

DELETE FROM payments
WHERE payment_id = 10;

SELECT * FROM payments;

SELECT 
	students.name,
    courses.course_name,
    payments.amount,
    payments.paid_on
FROM payments
INNER JOIN students
ON payments.student_id=students.student_id
INNER JOIN courses
ON payments.course_id=courses.course_id;

-----------------------------------------------
-----------------TASK 3------------------------

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

-----------------------------------------------
------------------TASK 4-----------------------

INSERT INTO payments
(student_id,course_id,amount,paid_on)
VALUES(5,3,1000,'2026-10-12');

UPDATE  courses
SET monthly_fee = 1000
WHERE course_id = 1;

CALL monthly_fee_summary(10,2026);