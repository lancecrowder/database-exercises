use employees;

SELECT DISTINCT last_name
FROM employees
  ORDER BY last_name DESC
LIMIT 10;

SELECT * FROM employees
WHERE hire_date Like '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

SELECT * FROM employees
WHERE hire_date Like '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;