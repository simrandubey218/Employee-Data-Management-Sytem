INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

select * from titles
limit 10;

Insert into titles
(
  emp_no,
  title,
  from_date
)
values
(
  999903,
  'Senior Engineer',
  '1997-10-01'
);

select * from titles
order by emp_no desc;

Insert into dept_emp
(
  emp_no,
  dept_no,
  from_date,
  to_date
)
values
(
  999903,
  'd005',
  '1997-10-01',
  '9999-01-01'
);

select * from dept_emp
order by emp_no desc;

insert into departments
values
(
  'D010',
  'Business Analysis'
);




























































































