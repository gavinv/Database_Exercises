-- List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'Z%' LIMIT 10 OFFSET;

-- Find 5 employees born on Christmas and hired in the 90s from order_by_exercises.sql.
