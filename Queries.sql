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

-- List the department of each employee with: employee number, last name, first name, and department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- list first & last name, and sex for employees whose first name is "Hercules" and last name begins with "B"
SELECT first_name, last_name, sex
FROM employees
WHERE
first_name = 'Hercules'
AND last_name LIKE 'B%';


-- List all employees in the Sales Department, include employee number, last & first name, & department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- List all employees in the Sale & Development departments, include employee number, last & first name, & department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- In descending order, list the frequency count of employees last name, i.e. how many employees share each last name.
SELECT last_name, COUNT (last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;




