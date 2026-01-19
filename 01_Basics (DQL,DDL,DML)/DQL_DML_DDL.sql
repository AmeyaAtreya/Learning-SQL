
use mydatabase;
select * from customers;
show tables;
select * from orders;

select id,first_name,country from customers 
where score != 0;

select id,first_name,country from customers 
order by country ASC,
score DESC;

select * from customers 
where country = 'Germany';

-- GROUP BY + HAVING + ORDER BY
SELECT country,SUM(score) AS total_score, count(*) as no_of_customers
	FROM customers
    GROUP BY country
    HAVING no_of_customers >=  2
    ORDER BY total_score DESC;
    
-- DISTINCT
SELECT distinct country from customers;

-- LIMIt
select * FROM customers
	order by score DESC
	LIMIT 3;
    
-- GET the two most recent order
SELECT * FROM orders
	ORDER BY order_date DESC
    LIMIT 2;
    
-- data definition language (DDL) CREATE,ALTER,DROP
create table persons(
	id INT NOT NULL,
    person_name varchar(50) NOT NULL,
    birth_date DATE,
    phone varchar(10) not null,
    constraint pk_persone PRIMARY KEY(ID) 
);

ALTER TABLE persone
ADD email VARCHAR(50) NOT NULL;

SELECT * FROM persons;

ALTER TABLE persone DROP COLUMN email;

DROP TABLE persone;

-- Data Manipulation Language (DML) INSERT, UPDATE , DELETE
INSERT INTO customers (id,first_name,country,score)
values
	(6,'Ameya','India',600),
    (7,'Anika','India',600);

INSERT INTO customers (id, first_name, country, score)
VALUES
    (8, 'Liam', 'Canada', 720),
    (9, 'Sofia', 'Spain', 850),
    (10, 'Yuto', 'Japan', 540),
    (11, 'Elena', 'Greece', 910),
    (12, 'Mateo', 'Mexico', 680);

-- Insert using SELECT
insert into persons (id, person_name, birth_date,phone)
select 
id, 
first_name,
NULL,
'unknown'
from customers;

-- UPDATE 
update customers
set score = 1000
where id = 6;

update customers 
set score = 0, country = 'china'
where id = 10;

-- DELETE
delete from customers
where id > 8;

delete from persons;

-- faster way to delete all the rows, especially from large data
truncate table persons;