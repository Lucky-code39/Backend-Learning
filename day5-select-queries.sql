-- Retrieve All Employees
SELECT * FROM employee;

-- Retrieve Only First and Last Names
SELECT first_name, last_name
FROM employee;

-- Display Employees in Ascending Salary
SELECT *
FROM employee
ORDER BY salary;

-- Highest Salary First
SELECT *
FROM employee
ORDER BY salary DESC;

-- Top 3 Highest Paid Employees
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 3;

-- Oldest Employee
SELECT *
FROM employee
ORDER BY birth_date
LIMIT 1;

-- Youngest Employee
SELECT *
FROM employee
ORDER BY birth_date DESC
LIMIT 1;

-- Distinct Genders
SELECT DISTINCT sex
FROM employee;

-- Distinct Branch IDs
SELECT DISTINCT branch_id
FROM employee;

-- Aliases select first name as forename
-- Aliases select last name as surname
 SELECT first_name as forename, last_name as surname
 FROM employee;
 
 -- Suppose everyone gets ₹10,000 extra salary.
 SELECT first_name, salary, 
 salary + 10000 AS new_salary
 FROM employee;
 
 -- Show only female employees.
 SELECT *
 FROM employee
 WHERE sex = 'F';
 
 -- Show employees earning more than ₹70,000.
 SELECT *
 FROM employee
 WHERE salary > 70000;
 
 -- Show employees earning between ₹60,000 and ₹80,000.
 SELECT *
 FROM employee
 WHERE salary >= 60000 AND salary <= 80000;
 
 -- Show all employees sorted by last name.
 SELECT *
 FROM employee
 ORDER BY last_name;
 
 -- Show the names of the top two highest-paid employees.
 SELECT *
 FROM employee
 ORDER BY salary DESC
 LIMIT 2;
 
 -- Display employee names with their annual salary.
 SELECT first_name,salary,
 salary * 12000 AS annual_salary
 FROM employee;
 
 -- Display only employees who belong to branch 2.
 SELECT *
 FROM employee
 WHERE branch_id = 2;
 
 


