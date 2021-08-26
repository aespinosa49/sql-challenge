-- Create a departments table 

Drop TABLE departments;

Create TABLE departments(
	dept_no VARCHAR (20),
	dept_name VARCHAR (30) NOT NULL,
	Primary Key (dept_no)
);

select * from departments;

-- Create a employees table 

Drop TABLE employees;

Create TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	Sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	Primary Key (emp_no)
);

select * from employees;

-- Create a dept_emp table 

Drop TABLE dept_emp;

Create TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;

-- Create a dept_emp table 

Drop TABLE dept_manager;

Create TABLE dept_manager(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager;

-- Create a dept_emp table 

Drop TABLE salaries;

Create TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- Create a titles table 

Drop TABLE titles;

Create TABLE titles(
	emp_no VARCHAR NOT NULL,
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from titles;

