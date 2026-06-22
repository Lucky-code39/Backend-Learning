CREATE TABLE employee(
employee_id INT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) Unique,
salary DECIMAL(10,2),
joining_date DATE,
department VARCHAR(50) DEFAULT 'General'
);

INSERT INTO employee VALUES(15, 'Lucky', 'luckyraheja19@gmail.com', 769000.00, '2026-07-19', 'IT');
SELECT * FROM employee;

INSERT INTO employee VALUES(16, 'yash', 'yash@gmail.com', '69698696.98', '2025-10-26', 'SALES');

INSERT INTO employee VALUES(17, 'Ajay', 'ajay@gmail.com', '50000', '2024-05-02', 'Medical');

SELECT * FROM employee;

INSERT INTO employee VALUES(01, 'Archit', 'archit@gmail.com', '90000', '2024-09-05', NULL);

SELECT * FROM employee;


UPDATE employee
SET department = 'general'
WHERE employee_id = 01;

SELECT * FROM employee;




