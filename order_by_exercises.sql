use employees;

SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
  WHERE hire_date Like '199%' AND birth_date LIKE '%-12-25';

SELECT * FROM employees
WHERE last_name Like '%q%' AND last_name NOT LIKE '%qu%';