CREATE TABLE students(
STUDENT_id INT PRIMARY KEY,
name VARCHAR(20),
major VARCHAR(20)
);

INSERT INTO students VALUES
(15, 'Lucky', 'CSE'),
(16, 'Yash', 'BBA'),
(17, 'Ajay', 'MBBS'),
(01, 'Archit', 'CSE'),
(20, 'prathamesh', 'ITI');


SHOW DATABASES;
use student;
SELECT DATABASE();
SHOW TABLES;
DESCRIBE students;

SELECT * FROM students;


SELECT 	DATABASE();

SELECT * FROM students
where student_id = 15;

SELECT * FROM students
WHERE student_id > 15;

SELECT * FROM students
WHERE major = 'cse';


select name from students;

select name from students 
where major = 'iti';

select name, student_id from students;

update students
set major = 'computer science'
where STUDENT_ID = 15;
show tables;
select * from students;

delete from students
where student_id = 15;

select * from students;