USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT CONCAT(last_name,', ', first_name) FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;

SELECT last_name FROM employees
WHERE last_name Like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;