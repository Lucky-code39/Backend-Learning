-- Employee full name and manager full name
SELECT e.first_name AS Employee_forename, e.last_name AS Employee_surname,
m.first_name AS Manager_forename, m.last_name AS Manager_surname
FROM employee AS e
LEFT JOIN employee AS m
ON e.super_id = m.emp_id;

-- Employees who don't have a manager.
SELECT e.first_name AS employee
FROM employee AS e
WHERE e.super_id IS NULL;

-- How many employees report to David?
SELECT count(e.super_id)
FROM employee AS e
WHERE e.super_id = 100;

-- How many employees report to Michael?
SELECT count(e.super_id)
FROM employee AS e
WHERE e.super_id = 102;

-- List employees and their salaries along with their manager's salaries.
SELECT e.first_name As employee, e.salary AS employee_salary,
m.salary AS manager_salary
FROM employee AS e
LEFT JOIN employee AS m
ON e.super_id = m.emp_id;





