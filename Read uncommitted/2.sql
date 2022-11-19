#step1
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

#step2
START TRANSACTION;

#step3
SELECT * FROM accounts;

#step4
SELECT * FROM accounts;

#step5
SELECT SUM(balance) from accounts;

#step6
SELECT SUM(balance) from accounts;
