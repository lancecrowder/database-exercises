use employees;

SELECT * FROM employees
WHERE first_name
      IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M';