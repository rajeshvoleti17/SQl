--V.Rajeshwar
--USN : 21BTRCD055

use student;
CREATE TABLE customerss(
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone_number VARCHAR(20)
);
desc customerss;
INSERT INTO customerss(customer_id, first_name, last_name, email, phone_number)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '987-654-3210'),
(3, 'Bob', 'Smith', 'bob.smith@example.com', '555-555-5555');


CREATE TABLE ordersss(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10, 2)
);
desc ordersss;
INSERT INTO ordersss(order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2022-01-01', 100.00),
(2, 1, '2022-01-15', 75.00),
(3, 2, '2022-02-01', 200.00),
(4, 3, '2022-03-01', 50.00),
(5, 3, '2022-03-15', 125.00);

SELECT *
FROM customerss
JOIN ordersss ON customerss.customer_id = ordersss.customer_id;


-- What is the total amount of all orders in the orders table?
select sum(total_amount) from ordersss;

-- What is the average total amount of an order in the orders table?
select avg(total_amount) from ordersss;

-- How many customers have placed orders in the orders table?
select count(customer_id) from ordersss;

-- What is the highest total amount of an order in the orders table?
select max(total_amount) from ordersss;

-- What is the total number of orders placed by customer Jane Doe in the orders table?
select count(ordersss.order_id) from ordersss join customerss on customerss.customer_id = ordersss.customer_id where first_name='jane' and last_name='Doe';

-- How many orders were placed on or after March 1st, 2022 in the orders table?
select count(order_id) from ordersss where order_date>="2022-03-01";

-- What is the highest total amount of orders placed by customers with the first name "John" in the orders table?
select max(total_amount) from ordersss join customerss on customerss.customer_id = ordersss.customer_id where first_name='John';

-- What are the names of customers who have a last name starting with "S" in the customers table?
select last_name from customerss where last_name like "S%";

-- What are the names and phone numbers of customers who have placed orders in the joined tables?
select customerss.first_name,customerss.last_name,customerss.phone_number from ordersss join customerss on customerss.customer_id = ordersss.customer_id;

-- What are the names and total amounts of all orders placed by each customer in the customers and orders tables?
select customerss.first_name,customerss.last_name,sum(ordersss.total_amount) from ordersss join customerss on customerss.customer_id = ordersss.customer_id group by customerss.customer_id;

-- What is the highest total amount of orders placed by customers with the last name "Smith" in the joined tables?
select max(total_amount) from ordersss join customerss on customerss.customer_id = ordersss.customer_id where last_name='Smith';

-- What is the average total amount of orders placed by customers with the first name "John" in the joined tables?
select avg(total_amount) from ordersss join customerss on customerss.customer_id = ordersss.customer_id where first_name='John';