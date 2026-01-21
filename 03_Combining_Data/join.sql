USE mydatabase;

-- No Join
-- Retrieve all data from customers and orders as separate results
SELECT * FROM customers;
SELECT * FROM orders;

-- Inner Join
-- Get all customers along with their orders, but only for customers who have placed an order
select c.id, c.first_name, o.order_id, o.sales
from customers c 
inner join orders o
on c.id = o.customer_id;

-- Left Join
-- Get all customers along with their orders, including those without orders
select c.id, c.first_name, o.order_id, o.sales
from customers c 
left join orders o
on c.id = o.customer_id;

-- RIGHT JOIN
-- Get all customers along with their orders, including orders without matching customers
select c.id, c.first_name, o.order_id, o.customer_id, o.sales
from customers c 
right join orders o
on c.id = o.customer_id;

-- or implementing right join using left join 
select c.id, c.first_name, o.order_id, o.sales
from  orders o
left join customers c
on c.id = o.customer_id;

-- FULL JOIN 
-- Get all customers and all orders, even if there’s no match (MySQL doesn't support FULL JOIN)
select c.id, c.first_name, o.order_id, o.sales
from customers c
left join orders o 
on c.id = o.customer_id

UNION

select c.id, c.first_name, o.order_id, o.sales
from customers c
right join orders o 
on c.id = o.customer_id

/* 
SELECT
    c.id,
    c.first_name,
    o.order_id,
    o.customer_id
    o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
*/