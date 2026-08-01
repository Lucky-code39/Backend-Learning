-- INDEXES


SELECT database();

-- Check existing indexes
SHOW INDEX FROM employee;

-- Create an index name on last_name it as idx_employee_last_name
CREATE INDEX idx_employee_last_name
ON employee(last_name);

-- CHECKING IF INDEX IS CREATED
SHOW INDEX FROM employee;

-- CREAETING AN INDEX ON SALARY
CREATE INDEX idx_employee_salary
ON employee(salary);

-- CREATING A COMPOSITE INDEX ON branch_id, salary
CREATE INDEX idx_employee_branch_salary
ON employee(branch_id, salary);

EXPLAIN 
SELECT *
FROM employee
WHERE branch_id = 2
AND salary > 70000;

EXPLAIN 
SELECT *
FROM employee
WHERE branch_id = 2; -- -> Index lookup on employee using idx_employee_branch_salary (branch_id = 2)  (cost=0.9 rows=4)

EXPLAIN 
SELECT *
FROM employee
WHERE salary > 70000; -- -> Index range scan on employee using idx_employee_salary over (70000.00 < salary), with index condition: (employee.salary > 70000.00)  (cost=2.51 rows=5)
 
 

