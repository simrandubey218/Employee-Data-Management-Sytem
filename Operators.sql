/* SELECT clause */

SELECT first_name, last_name
FROM employees;
    
SELECT *
FROM employees;

SELECT dept_no
FROM departments;

SELECT *
FROM departments;

/* WHERE clause */

SELECT *
FROM employees
WHERE first_name = 'Denis';
    
select * 
from employees 
where first_name = 'Elvis';

/* AND */

select * 
from employees 
where first_name = 'Denis' AND gender = 'M';

select * 
from employees 
where first_name = 'Kellie' AND gender = 'F';

/* OR clause */

select * 
from employees 
where first_name = 'kellie' OR first_name = 'Karuna';

/* OR + AND */

select * 
from employees
where gender = 'F' AND (first_name = 'Kellie' OR first_name = 'Aruna');

/* IN Operator */

Select *
from employees
where first_name = 'Cathie' OR
first_name = 'Mark' OR
first_name = 'Nathan' ;

Select *
from employees
where first_name in ('Denise', 'Elvis');

Select *
from employees
where first_name not in ('John', 'Mark', 'Jacob');

/* LIKE - NOT LIKE */

select * 
from employees
where first_name LIKE ('Mark%');

select * from employees
where hire_date like ('%2000%');

select *
from employees
where emp_no like ('1000_');

/* Wildcard Operators */

select *
from employees
where first_name like ('%jack%');

select *
from employees
where first_name not like ('%jack%');

/* BETWEEN.......... AND */

select * from salaries
where salary between (66000) and (70000);

select * from salaries
where emp_no not between (10004) and (10012);

select * from departments
where dept_no between ('d003') and ('d006');

/* NULL */

select * from departments
where dept_no is not null;

/* Mathematical operators */

select * from employees
where gender = ('F') AND hire_date >= ('2000-01-01');

select * from salaries
where salary > (150000);

/* Dinstinct */
select distinct hire_date
from employees;

/* Aggregate Functions */

# How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?

select count(distinct emp_no)
from salaries
where salary >= (100000);

# How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.

select count(*) from titles
where title = ('manager');

select count(*) from dept_manager;














