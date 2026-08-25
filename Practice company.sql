create database companyDb;

use companyDb;

create table customers(
id int primary key,
user_name varchar(50) not null,
age int,
country varchar(50),
amount_spend int
);

select* from customers;

INSERT INTO customers(id, user_name,age,country,amount_spend)
Values
(1, 'Rahul', 25, 'India', 15000),
(2, 'Priya', 28, 'India', 22000),
(3, 'Amit', 32, 'India', 18000),
(4, 'Neha', 24, 'India', 12000),
(5, 'John', 35, 'USA', 30000),
(6, 'Sarah', 29, 'UK', 25000),
(7, 'David', 41, 'Canada', 35000),
(8, 'Emma', 27, 'Australia', 20000),
(9, 'Rohan', 30, 'India', 28000),
(10, 'Sophia', 33, 'USA', 32000); 

--primary key => Not Null and Always unique

select * from customers;
--Filtering , Sort, 

select USER_NAME ,age from customers;

select * from customers 
where age> 30;

select * from customers where age>30 and country='India';

select * from customers
where country='India' and user_name like '%A';
---- %A = End A

select * from customers
where country='India' and user_name like 'A%';
-- A% = start A

select * from customers
where country='India' and user_name like '%A%';
-- %A% = Contains A

select * from customers 
where amount_spend between 20000 and 30000;

select * 
from customers
-- order by age desc;
order by age asc;


select * 
from customers
where age > 30
order by amount_spend desc;

select top 2 * 
from customers
where age > 30
order by amount_spend desc;

