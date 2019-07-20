/* 
1. List the following details of each employee: 
employee number, last name, first name, gender, and salary.
*/

SELECT *
FROM employees

SELECT *
FROM salaries

SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.gender,
  salaries.salary
  FROM employees 
  INNER JOIN salaries ON employees.emp_no = salaries.emp_no;
  
  
/* 
2. List employees who were hired in 1986. 
*/
 
 SELECT hire_date
 FROM employees
 
	WHERE hire_date > '1986-01-01'
 	AND  hire_date < '1986-12-31' ;
	
	
/*
3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, 
first name, and start and end employment dates. 
*/

SELECT * 
FROM dept_manager

SELECT *
FROM departments

SELECT *
FROM employees


SELECT dept_manager.emp_no,
	   dept_manager.from_date,
	   departments.dept_no,
	   departments.dept_name,
  	   employees.last_name,
       employees.first_name,
       employees.hire_date
  FROM dept_manager 
  INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
  INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
  
  
/*
4. List the department of each employee with the following information: 
employee number, last name, first name, and department name. 
*/

SELECT *
FROM departments

SELECT *
FROM dept_emp

SELECT *
FROM employees

SELECT 
employees.last_name,	
employees.first_name,
employees.emp_no,
departments.dept_name
FROM employees 
INNER JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments ON (dept_emp.dept_no = departments.dept_no)

/* 5. List all employees whose first name is "Hercules" 
and last names begin with "B."
*/

SELECT first_name, last_name
FROM employees

WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%'

