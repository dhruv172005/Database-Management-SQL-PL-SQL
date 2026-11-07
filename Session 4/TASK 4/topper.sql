SELECT roll_no,
SUM(marks_obtained) AS
total 
FROM marks
GROUP BY roll_no
ORDER BY total DESC
LIMIT 1;

