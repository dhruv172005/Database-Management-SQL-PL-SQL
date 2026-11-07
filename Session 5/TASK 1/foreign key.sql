ALTER TABLE marks
ADD CONSTRAINT fk_marks_student
FOREIGN KEY (roll_no)
REFERENCES students(roll_no);


ALTER TABLE marks
ADD CONSTRAINT fk_marks_subjects
FOREIGN KEY (subject_id)
REFERENCES subjects (subject_id);

INSERT INTO marks(roll_no,subject_id,marks_obtained)
VALUES
(99,1,80);


sql comments:Error

SQL query: Copy

INSERT INTO marks(roll_no,subject_id,marks_obtained)
VALUES
(99,1,80);

MySQL said: Documentation
#1452 - Cannot add or update a child row: a foreign key constraint fails (`school_db`.`marks`, CONSTRAINT `fk_marks_student` FOREIGN KEY (`roll_no`) REFERENCES `students` (`roll_no`))
