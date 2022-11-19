#step1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

#step2
START TRANSACTION;

#step3
SELECT * FROM accounts;

#step4
INSERT INTO accounts (login, balance, created_at) VALUES ('ivan', 750, NOW());
UPDATE accounts SET balance = 1500 WHERE login = 'vasya';
DELETE FROM accounts WHERE login = 'petya';

#step5
COMMIT;
