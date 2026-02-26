-- Question 18: Delete users and rollback

START TRANSACTION;

DELETE FROM users WHERE userid = 'John';
DELETE FROM users WHERE userid = 'Mary';

ROLLBACK;