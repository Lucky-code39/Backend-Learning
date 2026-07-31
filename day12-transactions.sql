-- TRANSACTIONS

CREATE TABLE accounts(
account_id INT PRIMARY KEY,
holder_name VARCHAR(50),
balance DECIMAL(10, 2)
);

INSERT INTO accounts VALUES
(1, 'Lucky', 10000),
(2, 'Ajay', 3000),
(3, 'Yash', 5000),
(4, 'Archit', 8000);

SELECT *
FROM accounts;

-- TRANSFER RS. 2000 FROM LUCKY -> ARCHIT USING A TRANSACTION

START TRANSACTION ;

UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 1;

UPDATE accounts 
SET balance = balance + 2000
WHERE  account_id = 4;

COMMIT;

SELECT *
FROM accounts;

SELECT *
FROM accounts
WHERE holder_name IN
('Lucky', 'Archit');
SELECT DATABASE();

SELECT * FROM accounts;


SHOW CREATE TABLE accounts;

SELECT *
From accounts;


SELECT @@autocommit;
SHOW TRIGGERS;

UPDATE accounts
SET balance = balance - 100
WHERE holder_name = 'Lucky';

SET SQL_SAFE_UPDATES = 0;


-- Increase every balance by ₹500. then rollback
START TRANSACTION;

UPDATE accounts
SET balance = balance + 500;

ROLLBACK;

COMMIT;


SELECT *
FROM accounts;

-- Increase every balance by ₹1000. AND COMMIT

START TRANSACTION;

UPDATE accounts
SET balance = balance + 1000;

COMMIT;


-- TRANSFER 3000 ARCHIT -> YASH
START TRANSACTION;

UPDATE accounts
SET balance = balance - 3000
WHERE holder_name = 'Archit';

UPDATE accounts
SET balance = balance + 3000
WHERE holder_name = 'yash';

COMMIT;

-- Use a SAVEPOINT. Increase Lucky's balance.Create a SAVEPOINT.Decrease Yash's balance.ROLLBACK TO SAVEPOINT.

START TRANSACTION;

UPDATE accounts
SET balance = balance + 1000
WHERE holder_name = 'LUCKY';

SAVEPOINT lucky_increment;

UPDATE accounts
SET balance = balance + 1000
WHERE holder_name = 'YASH';

ROLLBACK TO lucky_increment;

COMMIT;




SELECT *
FROM accounts;
