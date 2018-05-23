use employees;

SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';