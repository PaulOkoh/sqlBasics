-- In the orders.sql file, write out the code for the following problems:

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id SERIAL ,
  product_name VARCHAR(30) NOT NULL,
  product_price FLOAT,
  quantity INTEGER
  );


-- Add 5 orders to the orders table.
INSERT INTO orders(product_name, product_price, quantity)
VALUES('Chicken Afredo', 22.99, 1),
('Cheesburger', 12.50, 2),
('Jasmine Rice', 14.99, 3),
('Salmon', 18.99, 5),
('Poke', 21.00, 2),
('Ramen', 18.00, 1)
--Make orders for at least two different people.

-- person_id should be different for different people.

-- Select all the records from the orders table.
SELECT * FROM orders


-- Calculate the total number of products ordered.
SELECT SUM(quantity)
FROM orders

-- Calculate the total order price.
SELECT
SUM(quantity * product_price) AS TOTAL
FROM orders


-- Calculate the total order price by a single person_id.
SELECT
SUM(quantity * product_price) AS TOTAL
FROM orders
WHERE person_id = 2


