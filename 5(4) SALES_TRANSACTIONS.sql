USE SalesAnalyticsDB;


SELECT * FROM sales_transactions;

--1

SELECT category ,
COUNT(transaction_id) AS Total_Transaction,
SUM(quantity) AS Total_Quantity_Sold,
SUM(quantity*unit_price) AS Total_Sales,
AVG(unit_price) AS Average_Unit_Price,
MIN(unit_price) AS Lowest_Unit_Price,
MAX(unit_price) AS Highest_Unit_Price
FROM sales_transactions
GROUP BY Category;

--2

SELECT category,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold ,
SUM(quantity * unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_Unit_Price
FROM sales_transactions
GROUP BY category
ORDER BY Total_Sales DESC;

--3

SELECT salesperson ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
GROUP BY salesperson
ORDER BY Total_Sales DESC;
	
--4

SELECT city ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
GROUP BY city
ORDER BY Total_Sales DESC;

--5

SELECT customer_type ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
GROUP BY customer_type
ORDER BY Total_Sales DESC;

--6

SELECT payment_mode ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
GROUP BY payment_mode
ORDER BY Total_Sales DESC;

--7

SELECT category,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
GROUP BY category
HAVING SUM(quantity*unit_price) > 300000;

--8

SELECT salesperson ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales 
FROM sales_transactions
GROUP BY salesperson
HAVING SUM(quantity*unit_price) > 500000
ORDER BY Total_Sales DESC;

--9

SELECT product_name ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
GROUP BY product_name
HAVING SUM(quantity) > 5
ORDER BY Total_Quantity DESC;

--10

SELECT category, 
COUNT(transaction_id) AS Total_Transaction,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_UnitPrice
FROM sales_transactions
WHERE customer_type='Premium'
GROUP BY category
HAVING SUM(quantity*unit_price) > 200000;

--11

SELECT salesperson, 
COUNT(transaction_id) AS Total_Transaction,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales 
FROM sales_transactions
WHERE customer_type='VIP'
GROUP BY salesperson
HAVING SUM(quantity*unit_price) > 300000;

--12

SELECT city ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity , 
SUM(quantity*unit_price) AS Total_Sales
FROM sales_transactions
WHERE payment_mode IN ('Online','Card')
GROUP BY city
Having SUM(quantity*unit_price) > 300000;

--13

SELECT discount_percent , 
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_Unit_Price 
FROM sales_transactions
GROUP BY discount_percent
HAVING COUNT(transaction_id) >=2;

--14

SELECT salesperson , 
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_Unit_Price ,
MAX(unit_price) AS Highest_Unit_Price
FROM sales_transactions
WHERE category='Electronics'
GROUP BY salesperson
HAVING SUM(quantity*unit_price)>250000;

--15


SELECT city , 
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_Unit_Price 
FROM sales_transactions
WHERE category='Furniture'
AND quantity>2
GROUP BY city
HAVING SUM(quantity*unit_price)>50000;

--16

SELECT salesperson , 
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_Unit_Price
FROM sales_transactions
WHERE category='Appliances' 
AND payment_mode NOT IN ('Cash')
AND discount_percent<20
GROUP BY salesperson
HAVING SUM(quantity*unit_price)>100000;


--17

SELECT customer_type ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(unit_price) AS Average_Unit_Price ,
MAX(unit_price) AS Highest_Unit_Price
FROM sales_transactions
WHERE customer_type IN ('Premium','VIP')
GROUP BY customer_type
ORDER BY Total_Sales DESC;

--18

SELECT salesperson ,
COUNT(transaction_id) AS Total_Transaction ,
SUM(quantity) AS Total_Quantity_Sold , 
SUM(quantity*unit_price) AS Total_Sales ,
AVG(discount_percent) AS Average_Discount_Percentage
FROM sales_transactions
WHERE discount_percent>15
GROUP BY salesperson
HAVING COUNT(transaction_id) >= 2
ORDER BY Total_Sales DESC;

--19

INSERT INTO sales_transactions
(transaction_id,
customer_name,
product_name,
category,
quantity,
unit_price,
discount_percent,
city,
payment_mode,
salesperson,
customer_type)
VALUES
(1031,'Raj Mehta','MacBook Pro','Electronics',2,125000,10,'Mumbai','Online','Rahul','Premium');

SELECT * FROM sales_transactions
WHERE transaction_id=1031;

--20

SELECT salesperson , category ,
COUNT(transaction_id) AS Total_Transactions ,
SUM(quantity) AS Total_Quantity ,
SUM(quantity*unit_price) AS Total_Sales , 
AVG(unit_price) AS Average_Unit_Price , 
MIN(unit_price) AS Minimum_Unit_Price , 
MAX(unit_price) AS Maximum_Unit_Price ,
AVG(discount_percent) AS Average_Discount_Percentage
FROM sales_transactions
WHERE customer_type IN ('Premium','VIP')
AND payment_mode NOT IN ('Cash')
AND quantity>1 
AND discount_percent<20
GROUP BY salesperson , category 
HAVING SUM(quantity*unit_price) > 200000
ORDER BY SUM(quantity*unit_price) DESC;

-- Additional CRUD Challenge 

SELECT
COUNT(*) AS total_transactions,
SUM(quantity) AS total_quantity,
SUM(quantity * unit_price) AS total_sales_value,
AVG(unit_price) AS average_unit_price,
MAX(unit_price) AS highest_unit_price,
MIN(unit_price) AS lowest_unit_price
FROM sales_transactions
WHERE transaction_id = 1031;

UPDATE sales_transactions
SET discount_percent=12
WHERE transaction_id=1031;

SELECT * FROM sales_transactions
WHERE transaction_id=1031;

DELETE FROM sales_transactions
WHERE transaction_id=1031;