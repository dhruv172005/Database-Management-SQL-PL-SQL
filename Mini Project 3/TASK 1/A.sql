CREATE TABLE studens(
student_id int PRIMARY KEY,
name varchar(100) not null,
class varchar(100) not null,
city varchar(100) not null);

CREATE TABLE courses(
course_id int PRIMARY KEY,
course_name varchar(100) NOT null,
monthly_fee int NOT null);

CREATE TABLE payments(
    payment_id int AUTO_INCREMENT PRIMARY KEY,
    student_id int NOT null,
    course_id int NOT null,
    amount int NOT null,
    paid_on date NOT null,

FOREIGN KEY (student_id)
REFERENCES students (student_id),

FOREIGN KEY (course_id)
REFERENCES courses(course_id));

