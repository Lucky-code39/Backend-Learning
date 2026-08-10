-- Find employees whose salary is greater than 70,000 and who work in branch 2.
SELECT first_name, last_name
FROM employee
WHERE salary > 70000 AND branch_id = 2;

-- Display the 3 highest-paid employees, showing only: first_name, last_name and salary
SELECT first_name, last_name, salary
FROM employee
ORDER BY salary DESC
LIMIT 3;

-- Find the average salary of employees in each branch
SELECT b.branch_id, AVG(salary)
FROM employee e
JOIN branch b
ON b.branch_id = e.branch_id
GROUP BY e.branch_id;

-- Find branches where the average employee salary is greater than 70,000.
SELECT b.branch_id, AVG(salary)
FROM employee e
JOIN branch b
ON b.branch_id = e.branch_id
GROUP BY e.branch_id
HAVING AVG(salary) > 70000;

-- employee first name | employee last name | branch name for every employee who belongs to a branch.

SELECT e.first_name, e.last_name, b.branch_name
FROM employee e
JOIN branch b
ON e.branch_id = b.branch_id;

-- employee first name | employee last name | branch name Display all branches, including branches that currently have no employees.

SELECT e.first_name, e.last_name, b.branch_name
FROM employee e
LEFT JOIN branch b
ON e.branch_id = b.branch_id;

-- employee name | manager name
SELECT e.first_name AS employee_name, m.first_name AS manager_name
FROM employee e
LEFT JOIN employee m
ON e.super_id = m.emp_id;

-- TO DISPLAY employee first name | client name | branch name
SELECT e.first_name, c.client_name, b.branch_name
FROM employee e
JOIN branch b
ON e.branch_id = b.branch_id

 
JOIN works_with w
ON e.emp_id = w.emp_id

JOIN client c
ON w.client_id = c.client_id;

-- Find employees whose salary is greater than the average company salary.
SELECT first_name, last_name
FROM employee
WHERE salary >
(
SELECT AVG(salary)
FROM employee
);
SELECT DATABASE();
SHOW tables;
USE bank_db;

SELECT *
FROM accounts;
DESCRIBE accounts;
-- Transfer ₹5,000 from Lucky's account to Archit's account using:

START TRANSACTION;

UPDATE accounts
SET balance = balance + 5000
WHERE account_id = 1;

UPDATE accounts
SET balance = balance - 5000
WHERE account_id = 4;

COMMIT;






