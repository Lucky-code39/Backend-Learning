CREATE TABLE employee(
employee_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
department VARCHAR(30),
salary DECIMAL(10,2),
age INT

);
SELECT * FROM employee;
INSERT INTO employee VALUES
(1, 'Lucky', 'CSE', 80000, 21),
(2, 'Ajay', 'MBBS', 100000, 23),
(3, 'Yash', 'BBA', 60000, 20),
(4, 'Archit', 'CSE', 80000, 22),
(5, 'Prathamesh', 'ITI', 20000, 26),
(6, 'Mayank', 'BUSINESS', 300000, 22), 
(7, 'Manish', 'DRUGS', 400000, 21),
(8, 'Gopal', 'CSE', 70000, 21);

SELECT *
FROM employee
WHERE NOT department = 'CSE';

SELECT *
FROM employee
ORDER BY salary DESC;

SELECT *
FROM employee
LIMIT 3;

SELECT *
FROM employee
ORDER BY name; 








