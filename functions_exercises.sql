use employees;

DESCRIBE employees;


SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name;



SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;



SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')

ORDER BY last_name, first_name;



SELECT * FROM employees
WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;

#*****************START OF FUNCTIONS EXERCISE
#Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE first_name LIKE 'E%'
   AND last_name LIKE '%E';

#Find all employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE  month(birth_date) = 12
AND day(birth_date) = 25;



#Find all employees hired in the 90s and born on Christmas
SELECT * FROM employees
WHERE  year(hire_date)  BETWEEN 1990 AND 1999
 AND  month(birth_date) = 12
  AND day(birth_date) = 25;


#Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT * FROM employees
WHERE  year(hire_date)  BETWEEN 1990 AND 1999
  AND  month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;


#For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
SELECT * FROM employees
WHERE  year(hire_date)  BETWEEN 1990 AND 1999
  AND  month(birth_date) = 12
  AND day(birth_date) = 25;


SELECT first_name, last_name, DATEDIFF (CURDATE(), hire_date) FROM employees
WHERE  year(hire_date)  BETWEEN 1990 AND 1999
  AND  month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;;