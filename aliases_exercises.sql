USE employees;

SELECT CONCAT(first_name,' ', last_name) AS full_name,
  birth_date AS DOB
FROM employees
LIMIT 10;

