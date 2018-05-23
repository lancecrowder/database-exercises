use employees;

SELECT * FROM employees
WHERE last_name Like '%q%' AND last_name NOT LIKE '%qu%';