-- SQL Chanllege Homework

-- Table Schema

-- department table

DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR (10),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

select * from departments

-- employees table

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

-- Department Employee table

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

-- Department Managers table

DROP TABLE dept_managers

CREATE TABLE dept_managers (
 dept_no VARCHAR (10),
 emp_no INT,
 from_date DATE NOT NULL,
 to_date DATE NOT NULL,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers

-- Salaries table

DROP TABLE salaries

CREATE TABLE salaries (
emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries
