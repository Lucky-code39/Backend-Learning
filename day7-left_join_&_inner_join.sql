-- INNER JOIN PRACTICE
-- WRIRING JOIN OR INNER JOIN IN QUERY IS THE SAME
-- JOIN IS BYY DEFAULT THE INNER JOIN

-- Show employee first_name, last_name and branch names.
SELECT employee.first_name, employee.last_name,
branch.branch_name
FROM employee
INNER JOIN branch
ON employee.branch_id = branch.branch_id;

-- Show employee salary and branch name.
SELECT employee.first_name, employee.salary, branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id;

-- Sort employees by branch name IN descending order.

SELECT employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id
ORDER BY branch.branch_name DESC;

-- Only show employees from Scranton.
SELECT employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id
WHERE branch.branch_name = 'Scranton';

-- Show employees earning more than 70,000 along with their branch.
SELECT employee.first_name, employee.salary, branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id
WHERE employee.salary > 70000;

-- Count employees in each branch.
SELECT COUNT(emp_id), branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id
GROUP BY  branch.branch_name;

-- Average salary by branch.
SELECT AVG(employee.salary), branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id
GROUP BY branch.branch_name;

SELECT *
FROM employee AS e
INNER JOIN branch AS b
ON e.branch_id = b.branch_id;

-- LEFT JOIN PRACTICE 

-- Show employee names and branch names using a LEFT JOIN.
SELECT e.first_name, b.branch_name
FROM employee AS e
LEFT JOIN branch AS b
ON e.branch_id = b.branch_id;

INSERT INTO employee VALUES
(110, 'Lucky', 'Raheja', '2006-07-19', 'M', '80000', NULL, NULL);

SELECT * FROM employee;

SELECT e.first_name, b.branch_name
FROM employee AS e
LEFT JOIN branch as b
ON e.branch_id = b.branch_id;

DELETE FROM employee 
WHERE emp_id = 110;

 -- Show: first_name, last_name, salary and branch_name
-- using LEFT JOIN.

SELECT e.first_name, e.last_name, e.salary, b.branch_name
FROM employee AS e
LEFT JOIN branch AS b
ON e.branch_id = b.branch_id;

-- sort by branch name descending
SELECT e.first_name, b.branch_name
FROM employee AS e
LEFT JOIN branch AS b
ON e.branch_id = b.branch_id
ORDER BY branch_name DESC;
 
 -- Show employees whose branch could not be found.
 SELECT e.first_name, b.branch_name
 FROM employee AS e
 LEFT JOIN branch AS b
 ON e.branch_id = b.branch_id
 WHERE e.branch_id IS NULL;

