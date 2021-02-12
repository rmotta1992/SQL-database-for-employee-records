CREATE TABLE departments(
	dept_no VARCHAR(30),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(30),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees(
	emp_no INTEGER,
	emp_title_id VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR (1),
	hire_date VARCHAR(30),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);

CREATE TABLE employee_dept(
	emp_no INTEGER,
	dept_no VARCHAR(30),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);


CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE salaries( 
	emp_no INTEGER,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);
