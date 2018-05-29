use employees;

SELECT CONCAT(first_name,' ', Last_name) AS Name
from employees
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

SELECT CONCAT(first_name, ' ', last_name) as CurrentFemaleManagers
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no
    from employees
    WHERE to_date > NOW()
  )
  AND gender = 'F'
);