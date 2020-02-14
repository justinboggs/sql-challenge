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

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select a.dept_no, c.dept_name, a.emp_no, b.last_name, b.first_name, a.from_date, a.to_date
from dept_manager a
join departments c
on (a.dept_no = c.dept_no)
join employees b
on (a.emp_no = b.emp_no)

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
join dept_emp b
on (a.emp_no = b.emp_no)
join departments c
on (b.dept_no = c.dept_no)

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
select *
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
join dept_emp b
on (a.emp_no = b.emp_no)
join departments c
on (b.dept_no = c.dept_no)
where c.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select a.emp_no, a.last_name, a.first_name, c.dept_name
from employees a
join dept_emp b
on (a.emp_no = b.emp_no)
join departments c
on (b.dept_no = c.dept_no)
where c.dept_name in ('Sales', 'Development')

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc

-- 9. My employee number
select first_name, last_name
from employees
where emp_no = '499942'