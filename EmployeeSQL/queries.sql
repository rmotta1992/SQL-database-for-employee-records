SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.sex, salaries.emp_no, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

SElECT first_name, last_name, hire_date
FROM employees
WHERE DATE(hire_date) BETWEEN '1/1/1986' AND '12/31/1986';