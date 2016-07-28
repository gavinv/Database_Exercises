USE employees;

-- Order By
SELECT first_name, last_name FROM employees WHERE first_name IN ('Vidya', 'Maya', 'Irena') ORDER BY first_name ASC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Vidya', 'Maya', 'Irena') ORDER BY first_name, last_name ASC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Vidya', 'Maya', 'Irena') ORDER BY last_name, first_name ASC;
SELECT last_name FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Vidya', 'Maya', 'Irena') ORDER BY first_name DESC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Vidya', 'Maya', 'Irena') ORDER BY first_name DESC, last_name DESC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Vidya', 'Maya', 'Irena') ORDER BY last_name, first_name DESC;
SELECT last_name FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;
SELECT * from employees where hire_date like '199%' and birth_date like '%-12-25' ORDER BY birth_date ASC, hire_date DESC;

-- Aliases
SELECT CONCAT(emp_no, ' - ', first_name, ' ', last_name) AS full_name, birth_date FROM employees GROUP BY full_name ORDER BY full_name LIMIT 10;
SELECT CONCAT(emp_no, ' - ', first_name, ' ', last_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;