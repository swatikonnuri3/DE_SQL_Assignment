SELECT
    COUNT(*) AS count_gmail_account,
    MAX(signup_date) AS latest_signup_date,
    MIN(signup_date) AS first_signup_date,
    DATEDIFF(MAX(signup_date), MIN(signup_date)) AS diff_in_days
FROM email_signup
WHERE LOWER(email_id) LIKE '%gmail%';
UPDATE email_signup
SET signup_date = '1970-01-01'
WHERE signup_date IS NULL;