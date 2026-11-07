INSERT INTO students(roll_no,name)
VALUES(99,'dhruv2')


SELECT 
    s.roll_no,
    s.name,
    m.marks_obtained
FROM students s 
LEFT JOIN marks m 
ON s.roll_no = m.roll_no
WHERE m.marks_obtained IS null;