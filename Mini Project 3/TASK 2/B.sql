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
