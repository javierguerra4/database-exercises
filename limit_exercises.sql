use employees;
DESCRIBE employees;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'z%'
ORDER BY last_name DESC
LIMIT 10;