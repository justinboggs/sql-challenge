-- Data Analysis
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select a.emp_no, a.last_name, a.first_name, a.gender, b.salary
from employees a
join salaries b
on (a.emp_no = b.emp_no)

-- 2. List employees who were hired in 1986.
select last_name, first_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'