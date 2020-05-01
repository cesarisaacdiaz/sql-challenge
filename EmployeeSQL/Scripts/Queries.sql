-- 1.
select e.emp_no as "employee number",
       e.last_name,
       e.first_name,
       e.gender,
       s.salary 
from employees e
inner join salaries s on s.emp_no = e.emp_no;

-- 2.
select e.emp_no as "employee number",
       e.last_name,
       e.first_name,
       e.gender
from employees e
where extract(year from e.hire_date)='1986';

-- 3.
select dm.dept_no as "Department number",
       d.dept_name as "Department Name",
       e.emp_no as "Employee number",
       e.last_name as "Last Name",
       e.first_name as "First Name",
       dm.from_date as "Start Date",
       dm.to_date as "End Date"
from dept_manager dm
inner join deparments d on dm.dept_no = d.dept_no
inner join employees e on e.emp_no = dm.emp_no;

-- 4.
select e.emp_no as "Employee Number",
       e.last_name as "Last Name",
       e.first_name as "First Name",
       d.dept_name as "Deparment Name"
from deparments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join employees e on e.emp_no = de.emp_no;

-- 5.
select *
from employees e
where e.first_name = 'Hercules'
and e.last_name like 'B%';

-- 6.
select e.emp_no as "Employee Number",
       e.last_name as "Last Name",
       e.first_name as "First Name",
       d.dept_name as "Deparment Name"
from deparments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join employees e on e.emp_no = de.emp_no
where de.dept_no = 'd007';

-- 7.
select e.emp_no as "Employee Number",
       e.last_name as "Last Name",
       e.first_name as "First Name",
       d.dept_name as "Deparment Name"
from deparments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join employees e on e.emp_no = de.emp_no
where de.dept_no in ('d007','d005');

-- 8.
select e.last_name, count(e.last_name) as "Frecuency Last Name"
from employees e
group by e.last_name
order by "Frecuency Last Name" desc;