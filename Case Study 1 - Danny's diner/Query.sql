/*Creating Database*/

CREATE SCHEMA dannys_diner;

/*Creating Sales Table*/

CREATE TABLE sales (
    customer_id VARCHAR(1),
    order_date DATE,
    product_id INTEGER
);

INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 
SELECT 
    *
FROM
    sales;
    
/*Creating Menu Table*/

CREATE TABLE menu (
    product_id INTEGER,
    product_name VARCHAR(5),
    price INTEGER
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  
SELECT 
    *
FROM
    menu;

/*Creating Members Table*/

CREATE TABLE members (
    customer_id VARCHAR(1),
    join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');
  
SELECT 
    *
FROM
    members;
    
/* --------------------
   Case Study Questions
   --------------------

We use the SUM and GROUP BY functions to find out total spent for each customer and JOIN function because 
customer_id is from sales table and price is from menu table.

1. What is the total amount each customer spent at the restaurant?*/

SELECT 
    customer_id, SUM(price) AS customer_spending
FROM
    sales AS s
        LEFT JOIN
    menu AS m using (product_id)
GROUP BY customer_id;
    
SELECT 
    customer_id, SUM(price) AS customer_spending
FROM
    sales AS s
        JOIN
    menu AS m ON m.product_id = s.product_id
GROUP BY customer_id;

/*2. How many days has each customer visited the restaurant?*/

SELECT 
    customer_id, COUNT(DISTINCT (order_date)) AS no_of_days_visited
FROM
    sales
GROUP BY customer_id;

/*3. What was the first item from the menu purchased by each customer?*/
