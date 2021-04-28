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
