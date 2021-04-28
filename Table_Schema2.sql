-- Create tables and load data

-- departments table
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments

-- Department Employee Table

DROP TABLE dept_emp
 
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR
);

SELECT * FROM dept_emp

-- Department Managers Table

CREATE TABLE dept_managers(
	dept_no VARCHAR,
	emp_no INT
);

SELECT * FROM dept_managers

-- Employee table

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees

-- Salaries Table

CREATE TABLE salaries(
	emp_no INT,
	salary INT
);

SELECT * FROM salaries