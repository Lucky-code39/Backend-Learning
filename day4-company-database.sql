SELECT DATABASE();
SHOW TABLES;

CREATE TABLE employee(
emp_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
birth_date DATE,
sex VARCHAR(1),
salary DECIMAL(10,2),
super_id INT,
branch_id INT
);
SELECT * 
FROM employee;

CREATE TABLE branch(
branch_id INT,
branch_name VARCHAR(50),
mgr_id INT,
mgr_start_date DATE,
FOREIGN  KEY(mgr_id) REFERENCES employee(emp_id)
ON DELETE SET NULL
);

ALTER TABLE branch
ADD  PRIMARY KEY(branch_id);
ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

DESCRIBE employee;
ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

CREATE TABLE client(
client_id INT PRIMARY KEY,
client_name VARCHAR(50),
branch_id Int,
FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL
);
SELECT * 
FROM client;
DESCRIBE client;

CREATE TABLE works_with(
emp_id INT,
client_id INT,
total_sales INT,
PRIMARY KEY(emp_id, client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);
DESCRIBE works_with;

CREATE TABLE branch_supplier(
branch_id INT,
supplier_name VARCHAR(50),
supply_type VARCHAR(50),
PRIMARY KEY(branch_id, supplier_name),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);
SHOW TABLES;
INSERT INTO employee VALUES
(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO branch VALUES(
1, 'Corporate', 100, '2006-02-09'
);

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100
;
INSERT INTO employee VALUES
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

SELECT *
FROM employee;

INSERT INTO employee VALUES
(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, null);

INSERT INTO branch VALUES
(2, 'Scranton', 102, '1992-04-06');
UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES
(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, null)
;

INSERT INTO branch VALUES
(3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES
(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3),
(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3)
;

SELECT *
FROM BRANCH;

INSERT INTO client VALUES
(400, 'Dunmore Highschool', 2),
(401, 'Lackawana Country', 2),
(402, 'FedEx', 3),
(403, 'John Daly Law, LLC',3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspapar', 3),
(406, 'FedEx', 2)
;

INSERT INTO works_with VALUES
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102, 406, 15000),
(105, 406, 130000)
;

INSERT INTO branch_supplier VALUES
(2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms')
;


SHOW TABLES;
SELECT *
FROM branch_supplier

;


