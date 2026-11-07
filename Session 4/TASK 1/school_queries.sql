SELECT * FROM students
WHERE class ='10A'
ORDER BY name ASC;

SELECT roll_no,subject_id,marks_obtained
FROM marks 
WHERE marks_obtained >=80
ORDER BY marks_obtained DESC;

SELECT * FROM marks
ORDER BY marks_obtained DESC LIMIT 3;

SELECT name AS students_name FROM students;