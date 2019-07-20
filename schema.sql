DROP TABLE IF EXISTS departments
DROP TABLE IF EXISTS dept_emp
DROP TABLE IF EXISTS dept_manager
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS salaries
DROP TABLE IF EXISTS titles

CREATE TABLE departments (
    dept_no VARCHAR(50) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(50)   NOT NULL
      );

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
	PRIMARY KEY(emp_no,dept_no)
    
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT PRIMARY KEY NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);


CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL
);


CREATE TABLE salaries (
    emp_no INT PRIMARY KEY NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);


CREATE TABLE titles (
    emp_no INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	PRIMARY KEY(emp_no,title,from_date)
);
