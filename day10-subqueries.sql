-- SUBQUERIES( NESTED QUERIES)

-- FIND EMPLOYEES EARNING MORE THAN THE AVERAGE SALARY
SELECT *
FROM employee
WHERE salary >
(
SELECT AVG(salary)
FROM employee
);

-- FIND EMPLOYEES EARNING LESS THAN THE AVERAGE SALARY
SELECT *
FROM employee
WHERE salary <
(
SELECT AVG(salary)
FROM employee
);

-- FIND EMPLOYEES WORKING IN THE CORPORATE BRANCH USING A SUBQUERY

SELECT *
FROM employee
WHERE branch_id = 
(
SELECT branch_id
FROM branch
WHERE branch_name = 'corporate'
);

-- Find employees working in the Scranton branch using a subquery

SELECT *
FROM employee
WHERE branch_id =
(
SELECT branch_id
FROM branch
WHERE branch_name = 'Scranton'
);

-- Show all clients that have generated sales greater than $50,000.
SELECT client_name
FROM client
WHERE client_id IN
(
SELECT client_id
FROM works_with
WHERE total_sales > 50000
);

-- Show employees who work in branches managed by David Wallace.
SELECT first_name, last_name
FROM employee
WHERE branch_id = 
(
SELECT branch_id
FROM branch
WHERE mgr_id =

(
SELECT emp_id
FROM employee
WHERE first_name = 'david' AND last_name = 'wallace'
)
);

-- Find the branch names where at least one employee earns more than $80,000.
SELECT branch_name
FROM branch
WHERE branch_id IN
(
SELECT branch_id 
FROM employee
WHERE salary > 80000
);

-- Find employees whose salary is equal to the highest salary in the company without using MAX() in the outer query.
SELECT first_name, last_name
FROM employee
WHERE salary =
(
SELECT MAX(salary)
FROM employee
);



