SELECT SUM(marks_obtained) AS
total_marks
FROM marks
WHERE roll_no=1;

SELECT AVG(marks_obtained) AS
total_avarage
FROM marks
WHERE roll_no=1;

SELECT COUNT(class) AS
total_students
FROM students
WHERE class='10A';