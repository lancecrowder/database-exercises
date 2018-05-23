use employees;

SELECT * FROM employees
WHERE last_name like 'E%' OR last_name like '%E';