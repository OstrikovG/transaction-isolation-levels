#step1
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

#step2
START TRANSACTION;

#step3
SELECT * FROM accounts;

#step4
UPDATE accounts SET balance = 1000 WHERE login = 'petya';

#step5
INSERT INTO accounts (login, balance, created_at) VALUES ('ivan', 750, NOW());
DELETE FROM accounts WHERE login = 'vasya';
