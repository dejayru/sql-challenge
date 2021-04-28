-- Queries

-- join employee table to salaries table

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no;

-- Get first & last name, hire date in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE
hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

-- list manager of each department, need dept number, name, and employees manageds
SELECT departments.dept_no, departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_managers ON departments.dept_no = dept_managers.dept_no
JOIN employees ON dept_managers.emp_no = employees.emp_no;

