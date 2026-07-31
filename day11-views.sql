-- VIEWS

-- Create a view showing: first_name, last_name and salary name it as employee_salary
CREATE VIEW employee_salary AS
SELECT first_name, last_name, salary
FROM employee;

SELECT *
FROM employee_salary;

-- Create a view showing: first_name, last_name and branch name it as employee_branch
CREATE VIEW employee_branch AS
SELECT e.first_name, e.last_name,
b.branch_name
FROM employee e
JOIN branch b
ON e.branch_id = b.branch_id;

SELECT *
FROM employee_branch;

-- Display employees from the Scranton branch using the view.
CREATE VIEW employees_scranton AS
SELECT e.first_name, e.last_name
FROM employee e
JOIN branch b
ON e.branch_id = b.branch_id
WHERE b.branch_name = 'Scranton';

SELECT *
FROM employees_scranton;

-- Create a view containing only employees whose salary is above 80,000. call it as high_salary_employee
CREATE VIEW high_salary_employee AS
SELECT first_name, last_name
FROM employee
WHERE salary > 80000;

SELECT *
FROM high_salary_employee;

-- Replace high_salary_employee so it also shows branch_id.
CREATE OR REPLACE VIEW high_salary_employee AS
SELECT first_name, last_name, branch_id
FROM employee;

-- Delete employee_salary.
DROP VIEW employee_salary;








