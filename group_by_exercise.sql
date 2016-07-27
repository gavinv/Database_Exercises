USE codeup_test_db;
SELECT DISTINCT titles FROM titles;
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name;
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE '%e%' GROUP BY first_name, last_name;