use employees;

-- Write a query showing each department name and the current manager of that dept.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM departments AS d
JOIN dept_manager AS dm
 ON dm.dept_no = d.dept_no
JOIN employees AS e
 ON e.emp_no = dm.emp_no
WHERE dm.to_date > curdate();

-- Find the name of all departments currently managed by women.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM departments AS d
JOIN dept_manager AS dm
 ON dm.dept_no = d.dept_no
JOIN employees AS e
 ON e.emp_no = dm.emp_no
WHERE dm.to_date > curdate() AND e.gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(e.emp_no) AS count
FROM employees AS e
JOIN titles AS t
 ON t.emp_no = e.emp_no
JOIN dept_emp AS de
 ON de.emp_no = e.emp_no
JOIN  departments AS d
 ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd009' AND t.to_date > curdate()
GROUP BY t.title;

-- Find current salary of all current managers
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary
FROM departments AS d
JOIN dept_manager AS dm
 ON dm.dept_no = d.dept_no
JOIN employees AS e
 ON e.emp_no = dm.emp_no
JOIN salaries AS s
 ON s.emp_no = e. emp_no
WHERE dm.to_date > curdate() AND s.to_date > curdate();

-- Bonus
SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Employee Name`, d.dept_name AS `Department Name`,
CONCAT(me.first_name, ' ', me.last_name) AS `Manager Name`
FROM employees AS e
JOIN dept_emp AS de
 ON de.emp_no = e.emp_no
JOIN departments AS d
 ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
 ON dm.dept_no = d.dept_no AND dm.to_date > curdate()
JOIN employees AS me
 ON me.emp_no = dm.emp_no
WHERE de.to_date > curdate();