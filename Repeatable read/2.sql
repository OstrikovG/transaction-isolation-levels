#step1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

#step2
START TRANSACTION;

#step3
SELECT * FROM accounts;

#step4
UPDATE accounts SET balance = 2000 WHERE login = 'vasya';

#step5
SELECT * FROM accounts;