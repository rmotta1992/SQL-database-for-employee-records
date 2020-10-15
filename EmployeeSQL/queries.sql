SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.sex, salaries.emp_no, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;
