-- Nickolas Kavanagh - SD12
-- Semester 3 - Database Programming
-- 2025/02/03 - 2025/02/10


-- Problem 2: Online Store Inventory and Orders System


-- Tasks
-- Write SQL Queries:

-- Retrieve the names and stock quantities of all products.
SELECT product_name, stock_quantity FROM products;


-- Retrieve the product names and quantities for one of the orders placed.
SELECT p.product_name, oi.quantity FROM order_items oi
JOIN products p ON oi.product_id = p.id
WHERE oi.order_id = 5;


-- Retrieve all orders placed by a specific customer (including the ID’s of what was ordered and the quantities).
SELECT o.id, p.product_name, oi.quantity FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE o.customer_id = 4;


-- Update Data:
-- Perform an update to simulate the reducing of stock quantities of items after a customer places an order. Please describe or indicate which order you are simulating the reducton for
UPDATE products p
SET stock_quantity = stock_quantity - oi.quantity
FROM order_items oi
WHERE p.id = oi.product_id AND oi.order_id = 5;
SELECT * FROM products;


-- Delete Data:
-- Remove one of the orders and all associated order items from the system.
DELETE FROM order_items
WHERE order_id = 5;

DELETE FROM orders
WHERE id = 5;

SELECT * FROM orders;
SELECT * FROM order_items;