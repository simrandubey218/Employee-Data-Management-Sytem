/*Unique key constraints*/

use sales;
create table customers 
(
customer_id int,
first_name varchar(255),
last_name varchar(255),
email_id varchar(255),
number_of_complaaints int,
primary key (customer_id),
unique key (email_id)
);

Alter table customers
add column gender enum('M',"F") after last_name;

insert into customers (first_name, last_name, gender, email_id, number_of_complaints)
values('John', 'Fernandez', 'M', 'John525@email.com', 6);

Alter table customers
rename column number_of_complaaints to number_of_complaints;

Drop table customers;
create table customers 
(
customer_id int auto_increment,
first_name varchar(255),
last_name varchar(255),
email_id varchar(255),
number_of_complaints int,
primary key (customer_id),
unique key (email_id)
);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0; 

create table companies
(
company_id varchar(255),
company_name varchar(255),
headquarters_phone_number varchar(255),
primary key (company_id),
unique key (headquarters_phone_number)
);

alter table companies
change column company_name company_name varchar(255) not null;

alter table companies
modify company_name varchar(255) null;


