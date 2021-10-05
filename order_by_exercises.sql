use employees;
DESCRIBE employees;

#Find all employees with first names 'Irena', 'Vidya', or 'Maya'
# SELECT * FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name;

# #Find all employees whose last name starts with 'E'
# SELECT * FROM employees
# WHERE last_name LIKE '%z';
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

#Find all employees whose last name starts with 'E'
# SELECT * FROM employees
# WHERE last_name LIKE 'e%';

#Find all employees with a 'q' in their last name
# SELECT * FROM employees
# WHERE last_name LIKE '%q%';

#Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN

# SELECT * FROM employees
# WHERE first_name = 'Irena'
#    OR first_name = 'Vidya'
#    OR first_name = 'Maya';

#Add a condition to the previous query to find everybody with those names who is also male

# SELECT first_name, gender
# FROM employees
# WHERE first_name IN ('Irena','Vidya', 'Maya')
#   AND gender = 'M';

#Find all employees whose last name starts or ends with 'E'

# SELECT last_name
# FROM employees
# WHERE last_name LIKE 'E%'
#    OR last_name LIKE '%E';

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'

# SELECT last_name
# FROM employees
# WHERE last_name LIKE 'E%'
#   AND last_name LIKE '%E';

#Find all employees with a 'q' in their last name but not 'qu'

# SELECT last_name
# FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%';