use employees;

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';