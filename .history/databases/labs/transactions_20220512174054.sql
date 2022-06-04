BEGIN;

BEGIN;

UPDATE accounts 
SET balance = balance - 200 
WHERE id = 1;

COMMIT;

BEGIN;
UPDATE accounts 
SET balance = balance + 200 
WHERE id = 2;
ROLLBACK;

COMMIT;

SELECT * FROM accounts;