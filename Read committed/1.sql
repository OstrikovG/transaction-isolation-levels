#step1
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

#step2
START TRANSACTION;

#step3
SELECT * FROM accounts;

#step4
INSERT INTO accounts (login, balance, created_at) VALUES ('ivan', 750, NOW());
DELETE FROM accounts WHERE login = 'vasya';
UPDATE accounts SET balance = 1500 WHERE login = 'petya';
SELECT * FROM accounts;

#step5
COMMIT;
