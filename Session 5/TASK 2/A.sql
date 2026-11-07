SELECT 
	s.name,
    sub.subject_name,
    m.marks_obtained,
    sub.max_marks
FROM students s

INNER JOIN marks m 
	ON s.roll_no = m.roll_no
    
INNER JOIN subjects sub 
	ON sub.subject_id = m.subject_id
    
WHERE s.roll_no=1

ORDER by sub.subject_name ASC;

