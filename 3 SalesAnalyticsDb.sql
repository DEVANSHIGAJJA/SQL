CREATE DATABASE SalesAnalyticsDb;

use SalesAnalyticsDb;

CREATE TABLE Customers(
id INT PRIMARY KEY,
user_name VARCHAR(50) NOT NULL,
age INT,
country VARCHAR(50),
amount_spend INT
);

INSERT INTO Customers(id , user_name,age,country,amount_spend)
VALUES
(1, 'Aarav Shah', 22, 'India', 1200),
(2, 'Diya Patel', 28, 'India', 8500),
(3, 'Rohan Mehta', 35, 'India', 32000),
(4, 'Emma Wilson', 19, 'USA', 950),
(5, 'James Brown', 42, 'USA', 45000),
(6, 'Sophia Miller', 31, 'UK', 12500),
(7, 'Oliver Smith', 56, 'UK', 68000),
(8, 'Lucas Martin', 24, 'France', 2100),
(9, 'Chloe Bernard', 39, 'France', 27500),
(10, 'Noah Garcia', 67, 'Canada', 72000),
(11, 'Mia Anderson', 45, 'Canada', 18500),
(12, 'Ethan Lee', 26, 'Australia', 3500),
(13, 'Olivia Taylor', 33, 'Australia', 22000),
(14, 'Kabir Joshi', 72, 'India', 5500),
(15, 'Ava Thompson', 29, 'USA', 95000),
(16, 'Daniel Clark', 52, 'UK', 4100),
(17, 'Sophie Laurent', 21, 'France', 1500),
(18, 'William Davis', 61, 'Canada', 54000),
(19, 'Ananya Desai', 30, 'India', 15000),
(20, 'Michael Johnson', 38, 'USA', 28500),
(21, 'Emily Walker', 47, 'UK', 37500),
(22, 'Pierre Dubois', 58, 'France', 62000),
(23, 'Grace Wilson', 25, 'Australia', 7800),
(24, 'Benjamin Hall', 70, 'Canada', 8900),
(25, 'Meera Shah', 41, 'India', 51000);

select * from Customers;

select USER_NAME,
age,
country 
from Customers;

select USER_NAME,
country,
amount_spend 
from Customers;

select * from Customers
where amount_spend> 50000;

select * from Customers
where age<30;

select * from Customers
where country='India';

select * from Customers
where amount_spend<20000;

select * from Customers 
where age<30 and amount_spend>30000;

select * from Customers
where country='India' and amount_spend>40000;

select * from Customers
where country='India' or country='usa';


select * from Customers
where (country='India' or country='usa')
and amount_spend>50000;

select  * from customers
where not country='India';

select * from Customers
order by amount_spend asc;

select * from Customers
order by amount_spend desc;

select * from Customers
order by age asc;


select * from Customers
where age between 20 and 40 or amount_spend> 30000
and (country='india' or country='usa')
order by amount_spend desc;



select * from Customers
where age>=30 
and amount_spend>40000 or not country='india'
order by amount_spend desc;


