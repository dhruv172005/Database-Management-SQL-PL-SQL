SELECT subject_id,
AVG(marks_obtained) AS avarage_marks
FROM marks
GROUP BY subject_id;


SELECT roll_no,
SUM(marks_obtained) AS total_marks
FROM marks
GROUP BY roll_no
ORDER BY total_marks desc;


SELECT subject_id ,
COUNT(*) AS total_records
from marks
GROUP BY subject_id;