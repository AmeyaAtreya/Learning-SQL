/*
	SQL Filtering
    
    1. Comparison Operators (=, <>, >, >=, <, <=)
    2. Logical Operators (AND, OR, NOT)
	3. Range Filtering (BETWEEN)
	4. Set Filtering (IN, NOT IN)
	5. Pattern Matching (LIKE)
*/

use mydatabase;

-- 1. Comparison Operators

-- retrieve data where country is germany
SELECT *
FROM customers
WHERE country = 'Germany';

-- retrieve data where country is not germany
select * from customers where country <> 'Germany';

-- retrieve data where score is greater than 500
select * from customers where score > 500;

-- retrieve data where score is greater than or equal to 500
select * from customers where score >= 500;

-- retrieve data where score is less than 500
select * from customers where score < 500;

-- retrieve data where score is less than or equal to 500
select * from customers where score <= 500;

-- 2. Logical Operators

-- AND operator (all condition must be true)
SELECT *
FROM customers
WHERE country = 'USA' 
AND score > 500;

-- or operator (at least one condition must be true)
SELECT *
FROM customers
WHERE country = 'USA' 
OR score > 500;

-- NOT operator (reverses - excludes matching values)
SELECT *
FROM customers
WHERE NOT score < 500;

-- 3. Range Filtering (BETWEEN)
SELECT *
FROM customers
WHERE score between 100 and 500;

-- 4. Set Filtering (IN, NOT IN)
SELECT *
FROM customers
WHERE country in ('USA','Germany');

SELECT *
FROM customers
WHERE country not in ('USA','Germany');

-- 5. Pattern Matching (LIKE)
-- Find all customers whose first name starts with 'M'.
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n'.
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains 'r'.
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first name has 'r' in the third position.
SELECT *
FROM customers
WHERE first_name LIKE '__r%';