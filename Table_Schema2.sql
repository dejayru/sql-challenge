-- Create tables and load data

-- departments table
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments

-- Department Employee Table

CREATE TABLE dept_emp(
    emp_no INT,
    dept_no VARCHAR,
    dept_name VARCHAR
);

SELECT * FROM dept_emp