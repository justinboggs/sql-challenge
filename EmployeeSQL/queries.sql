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


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.