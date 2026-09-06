USE JoinPracticeDB;



---1---
SELECT
c.customer_id,
c.customer_name,
c.city,
o.order_id,
o.product_name,
o.amount
FROM Customer AS c
INNER JOIN Orders AS o
ON c.customer_id = o.customer_id;



---2---
	SELECT
    c.customer_name,
    c.city,
    o.product_name,
    o.amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id;


    ---3---
	SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer AS c
LEFT JOIN Orders AS o
    ON c.customer_id = o.customer_id;

    ---4---
	SELECT
    c.customer_id,
    c.customer_name,
    c.city
FROM Customer AS c
LEFT JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


---5---
SELECT
    o.order_id,
    o.customer_id,
    c.customer_name,
    o.product_name,
    o.amount
FROM Customer AS c
RIGHT JOIN Orders AS o
    ON c.customer_id = o.customer_id;

    ---6---
    SELECT
    o.order_id,
    o.customer_id,
    o.product_name,
    o.amount
FROM Customer AS c
RIGHT JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;


---7---
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer AS c
FULL OUTER JOIN Orders AS o
    ON c.customer_id = o.customer_id;

---8---
    SELECT
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE o.amount > 10000;

---9---
SELECT
    c.customer_name,
    c.city,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE c.city = 'Delhi';

---10---
SELECT
    c.customer_name,
    o.product_name,
    o.quantity,
    o.amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE o.quantity > 2
ORDER BY o.quantity DESC;

---11---
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS total_amount
FROM Customer AS c
LEFT JOIN Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;

    ---12---
    SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customer AS c
LEFT JOIN Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;


    ---13---
    SELECT
    c.customer_name,
    AVG(o.amount) AS average_order_amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_name;

---14---
    SELECT
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE o.amount = (
    SELECT MAX(amount)
    FROM Orders
);

---15---
SELECT
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer AS c
INNER JOIN Orders AS o
    ON c.customer_id = o.customer_id
WHERE o.amount = (
    SELECT MIN(amount)
    FROM Orders
);

---16---
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS number_of_orders,
    COALESCE(SUM(o.quantity), 0) AS total_quantity,
    COALESCE(SUM(o.amount), 0) AS total_amount
FROM Customer AS c
LEFT JOIN Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;