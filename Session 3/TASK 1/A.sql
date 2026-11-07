USE school_db;

INSERT INTO students
(roll_no,name,class,city,email)
VALUES
(1,'dhruv','9A','ahemdabad','dhruv@gmail.com'),
(2,'dharmik','9B','rajkot','dharmik@gmail.com'),
(3,'krish','9A','baroda','krish@gmail.com'),
(4,'jay','9C','surat','jay@gmail.com'),
(5,'nikunj','9A','bhavnagar','nikunj@gmail.com');

INSERT INTO subjects
(subject_id,subject_name,max_marks)
VALUES
(1,'maths',100),
(2,'english',100),
(3,'gujrati',100),
(4,'science',100),
(5,'hindi',100);

SELECT * FROM students;

SELECT * FROM subjects;