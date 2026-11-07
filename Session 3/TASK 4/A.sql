SELECT * FROM marks LIMIT 5;

INSERT INTO marks (roll_no,subject_id,marks_obtained)
VALUES
(1,3,83);

DELETE FROM marks
WHERE roll_no =1
AND subject_id=3
and marks_obtained=83
LIMIT 1;

DELETE FROM marks
WHERE roll_no =2;

DELETE FROM students
WHERE roll_no =3;