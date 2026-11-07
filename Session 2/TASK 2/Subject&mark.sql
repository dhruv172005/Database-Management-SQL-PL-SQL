CREAT TABLE subjects(
subject_id INT PRIMARY KEY,
subject_name VARCHAR(40) NOT NULL,
max_mark INT);

CREATE TABLE mark(
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    roll_no INT,
    subject_id INT,
    mark_obtained INT);