use employees;

/* ORDER BY */
select * from employees.employees
order by hire_date desc;

/* Aliases */
select first_name, count(first_name) as Names_Count
from employees
group by first_name
order by first_name;


select salary, count(salary) as emps_with_same_salary
from salaries
where salary > (80000) 
group by salary
order by salary;

/* HAVING */
select salary, count(emp_no) as emps_with_same_salary
from salaries
where salary > (80000) 
group by salary
order by salary;

select salary from salaries
having salary > (20000)
order by salary;

select salary, count(emp_no) as emp_with_same_salary
from salaries
where salary > (120000)
group by salary
order by salary;

select salary, count(emp_no)
from salaries
group by salary
having salary > (120000)
order by salary;

select *, avg(salary)
from salaries
where salary > (120000)
group by emp_no
order by emp_no;

select *, avg(salary)
from salaries
group by emp_no
having avg(salary) > (120000);

select *
from salaries;

select emp_no, avg(salary)
from salaries
where salary > (120000)
group by emp_no
order by emp_no;

select emp_no, avg(salary)
from salaries
group by emp_no
having avg(salary) > 120000
order by emp_no;

/* WHERE + HAVING */

SELECT emp_no
FROM dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;

/* LIMIT */

select * from dept_emp
limit 100;













