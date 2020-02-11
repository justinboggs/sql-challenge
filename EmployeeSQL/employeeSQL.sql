--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no varchar NOT NULL,
	dept_name varchar NOT NULL
);

CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE dept_manager (
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE employees (
	emp_no int NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	gender varchar NOT NULL, 
	hire_date date NOT NULL
);

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE titles (
	emp_no int NOT NULL,
	title varchar NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles

--Employee number, last name, first name, gender, salary
select a.emp_no, a.last_name, a.first_name, a.gender, b.salary
from employees a
join salaries b
on (a.emp_no = b.emp_no)

--Employees hired in 1986
select last_name, first_name, hire_date
from employees
where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'

--Manager of each department
select c.last_name, c.first_name
from employees c
join dept_manager b
on (c.emp_no = b.emp_no)

select a.dept_no, b.dept_name, a.emp_no, a.from_date, a.to_date
from dept_manager a
join departments b
on (a.dept_no = b.dept_no)

--manager of each department
select last_name, first_name
from employees
where emp_no in
	(
	select emp_no
	from dept_manager
	)