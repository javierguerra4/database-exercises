USE employees;
DESCRIBE employees;


# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT dept_name AS 'Department name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE to_date >= NOW()
ORDER BY dept_name;


# Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date >= NOW()
 AND e.gender = 'F'
ORDER BY d.dept_name;


# Find the current titles of employees currently working in the Customer Service department
# SELECT emp_no AS 'title', COUNT(emp_no) FROM titles t
# JOIN dept_emp de ON d.dept_no = de.emp_no;


SELECT title, COUNT(title) FROM titles t
JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;

# SELECT dept_name AS 'Department name', CONCAT(first_name, ' ',  last_name) AS 'Department Manager' FROM departments d
# JOIN dept_manager dm ON d.dept_no = dm.dept_no
# ;


SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary AS 'Salary' FROM salaries s
    JOIN dept_manager dm ON s.emp_no = dm.emp_no
    JOIN employees e ON dm.emp_no = e.emp_no
    JOIN departments d ON d.dept_no = dm.dept_no
WHERE s.to_date LIKE '9%'
    AND dm.to_date LIKE '9%'
ORDER BY dept_name;

