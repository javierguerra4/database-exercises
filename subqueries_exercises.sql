USE employees;

DESCRIBE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows

# SELECT first_name, last_name, hire_date FROM employees
# WHERE emp_no IN(
#     SELECT first_name, last_name FROM employees
#     WHERE hire_date = 1990-10-22
#     );

SELECT  emp_no, CONCAT(first_name, ' ', last_name) AS 'name', hire_date
FROM employees
WHERE hire_date IN(
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT titles, CONCAT(first_name) AS 'name'
FROM employees
