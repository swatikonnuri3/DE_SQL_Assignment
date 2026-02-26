-- Question 15: Update product name from Ipad to Iphone

UPDATE product
SET product_name = 'Iphone'
WHERE product_name = 'Ipad';
-- Question 16: Rename table gold_member_users to gold_membership_users

RENAME TABLE gold_member_users TO gold_membership_users;
-- Question 17: Add status column

ALTER TABLE gold_membership_users
ADD status VARCHAR(3);
-- Set status as Yes for gold members

UPDATE gold_membership_users
SET status = 'Yes';