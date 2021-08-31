-- Create a departments table 

Drop TABLE departments;

Create TABLE departments(
	dept_no VARCHAR NOT NULL primary key,
	dept_name VARCHAR NOT NULL
);

select * from departments;

-- Create a employees table 

Drop TABLE employees;

Create TABLE employees(
	emp_no INT NOT NULL primary key,
	emp_title VARCHAR NOT NULL REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	Sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

select * from employees;

-- Create a dept_emp table 

Drop TABLE dept_emp;

Create TABLE dept_emp(
	emp_no INT NOT NULL REFERENCES employees (emp_no),
	dept_no VARCHAR NOT NULL REFERENCES departments(dept_no)
);

select * from dept_emp;

-- Create a dept_emp table 

Drop TABLE dept_manager;

Create TABLE dept_manager(
	dept_no VARCHAR NOT NULL REFERENCES departments(dept_no),
	emp_no INT NOT NULL REFERENCES employees(emp_no)
);

select * from dept_manager;

-- Create a dept_emp table 

Drop TABLE salaries;

Create TABLE salaries(
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	salary INT NOT NULL
);

select * from salaries;

-- Create a titles table 

Drop TABLE titles;

Create TABLE titles(
	title_id VARCHAR NOT NULL primary key,
	title VARCHAR NOT NULL
);

select * from titles;

