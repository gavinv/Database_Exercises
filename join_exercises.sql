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
WHERE dm.to_date > curdate() AND e.gender = 'F'