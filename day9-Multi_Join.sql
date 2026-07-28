-- MULTI-TABLE JOINS

-- SHOW EMPLOYEE NAME AND CLIENT NAME
SELECT e.first_name,
c.client_name

FROM employee e
JOIN works_with w
ON e.emp_id = w.emp_id

JOIN client c
ON w.client_id = c.client_id;

-- SHOW EMPLOYEE NAME, CLIENT NAME AND TOTAL SALES
 
 SELECT e.first_name, c.client_name,
 w.total_sales
 
 FROM employee e
 JOIN works_with w
 ON e.emp_id = w.emp_id
 
 JOIN client c
 ON w.client_id = c.client_id;
 
 -- SHOW ALL CLIENTS HANDLED BY MICHAEL SCOTT
 SELECT c.client_name
 FROM employee e
 JOIN works_with w
 ON e.emp_id = w.emp_id
 
 
 JOIN client c
 ON w.client_id = c.client_id
 WHERE w.emp_id = 102;
 
 -- Which employee generated the highest total sales?
 
 SELECT e.first_name, SUM(w.total_sales)
 FROM employee e
 JOIN works_with w
 ON e.emp_id = w.emp_id
 GROUP BY e.emp_id
 ORDER BY SUM(w.total_sales) DESC
 LIMIT 1;
 
 -- Show every employee and the total amount they sold.
 
 SELECT e.first_name, SUM(w.total_sales)
 FROM employee e 
 LEFT JOIN works_with w
 
 ON e.emp_id = w.emp_id
 GROUP BY e.emp_id;
 
 -- SHOW EMPLOYEE, BRANCH AND CLIENT 
 SELECT e.first_name, b.branch_name,
 c.client_name
 
 FROM employee e
 JOIN branch b
 ON e.branch_id = b.branch_id
 
 JOIN works_with w
 ON e.emp_id = w.emp_id
 
 JOIN client c
 ON w.client_id = c.client_id;
 
 -- Find the branch that generated the highest sales.
 
 SELECT b.branch_name, SUM(w.total_sales)
 
 FROM branch b
 JOIN employee e
 ON e.branch_id = b.branch_id
 
 JOIN works_with w
 ON e.emp_id = w.emp_id
 
 GROUP BY b.branch_name
 ORDER BY SUM(w.total_sales) DESC
 LIMIT 1;
 
 -- Show every supplier and the branch they supply.
 SELECT bs.supplier_name,
 b.branch_name
 
 FROM branch_supplier bs
 LEFT JOIN branch b
 
 ON bs.branch_id = b.branch_id;
