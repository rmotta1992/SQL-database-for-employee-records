CREATE TABLE departments(
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)
);


CREATE TABLE employee_dept(
	emp_no INTEGER,
	dept_no VARCHAR(30)
);


CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no INTEGER
);


CREATE TABLE employees(
	emp_no INTEGER,
	emp_title_id VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR (1),
	hire_date VARCHAR(30)
);


CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(30)
);


CREATE TABLE salaries( 
	emp_no INTEGER,
	salary INTEGER
);

