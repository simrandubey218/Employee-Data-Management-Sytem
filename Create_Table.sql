CREATE DATABASE IF NOT exists Sales;
create schema if not exists sales;

use sales;
create table customers 
(
  customer_id int not null,
  first_name varchar(255) not null,
  last_name varchar(255),
  email_address varchar(255) not null,
  number_of_complaints int not null
);

select * from customers;
select * from sales.customers;

create table T_sales
(
  purchase_number int auto_increment primary key,
  date_of_purchase date,
  customer_id int,
  item_code varchar(10)
);

drop table T_sales;
drop table customers;

create table customers
(
  customer_id int,
  first_name varchar(255),
  last_name varchar(255),
  email_address varchar(255),
  number_of_complaints int,
  primary key (customer_id)
);

create table items
(
  item_code varchar(255),
  item varchar(255),
  unit_price numeric(10,2),
  company_id varchar(255)
);

create table companies
(
  company_id varchar(255),
  comapny_name varchar(255),
  Headquarters_phone_number int(12)
);

Alter table items
Add primary key (item_code);

Alter table companies
Add primary key (company_id);

Alter table sales
Add foreign key (customer_id) references customers (customer_id) ON delete cascade;

Drop table sales.sales, sales.customers, sales.items, sales.companies;
