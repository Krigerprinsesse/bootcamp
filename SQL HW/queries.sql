select e.emp_no, e.last_name, e.first_name, e.gender, salaries.salary
from employees as e
join salaries on e.emp_no = salaries.emp_no;


select first_name, last_name, hire_date
from employees
where hire_date > '1985-12-31'
and hire_date < '1987-01-01';

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e on
dm.emp_no = e.emp_no
;
 

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as dm
on e.emp_no = dm.emp_no
join departments as d
on dm.dept_no = d.dept_no
;


select first_name, last_name
from employees
where first_name = 'Hercules'
and last_name like 'B%'
;

select dm.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as dm
join departments as d
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no
where d.dept_name = 'Sales'
;

select dm.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as dm
join departments as d
on dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'
;

select last_name, count (emp_no) as "Total Employees"
from employees
group by last_name
order by "Total Employees" desc
;
