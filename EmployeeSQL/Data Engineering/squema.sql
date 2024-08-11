DROP TABLE titles;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;


CREATE TABLE titles(
  title_id VARCHAR (5) PRIMARY KEY,
  title VARCHAR NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees(
  emp_no INTEGER PRIMARY KEY,
  emp_title VARCHAR NOT NULL,
  birth_date DATE,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR (1),
  hire_date DATE,
  FOREIGN KEY (emp_title) REFERENCES titles(title_id) 
);

SELECT * FROM employees;

CREATE TABLE salaries(
  emp_no INTEGER NOT NULL,
  salary INT,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

CREATE TABLE departments(
  dep_no VARCHAR (4) PRIMARY KEY,
  dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
  emp_no INTEGER,
  dept_no VARCHAR,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dep_no)	
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
  dept_no VARCHAR,
  emp_no INT,
  FOREIGN KEY (dept_no) REFERENCES departments(dep_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

SELECT * FROM dept_manager;


