use employees;

SELECT CONCAT(first_name,' ', Last_name) AS Name
from employees
WHERE hire_date IN (
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

SELECT CONCAT(first_name, ' ', last_name) as 'Current Female Managers'
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

SELECT dept_name  as 'Current Departments with Female Managers'
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no
    from employees
    WHERE to_date > NOW()
          AND gender = 'F'
  )
);

SELECT CONCAT(first_name,' ', last_name) AS 'Highest Paid Employee'
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM salaries
  WHERE salary IN (
    SELECT MAX(salary)
    FROM salaries
  )
)LIMIT 1;