-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR(30) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);


-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(30),
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex CHAR(1) NOT NULL,          
    hire_date DATE NOT NULL,      
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 
);


-- Create the department table
CREATE TABLE department (
    dept_no VARCHAR(30) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);


-- Create the department employees table
CREATE TABLE dept_emp (
    emp_no INT,
	dept_no VARCHAR(30),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);


-- Create the department manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(30),
	emp_no INT,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);


-- Create the salaries table
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
