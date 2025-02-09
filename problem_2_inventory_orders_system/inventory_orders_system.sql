-- Nickolas Kavanagh - SD12
-- Semester 3 - Database Programming
-- 2025/02/03 - 2025/02/10


-- Problem 2: Online Store Inventory and Orders System


-- Scenario
-- You are developing a system to manage products, customers, and their orders in an online store.


-- Requirements
-- Create Tables:

-- products: Store the following columns:
--  id (auto-incrementing primary key)
--  product_name (name of the product)
--  price (price of the product)
--  stock_quantity (current stock level of the product)


-- customers: Store the following columns:
--  id (auto-incrementing primary key)
--  first_name (customer’s first name)
--  last_name (customer’s last name)
--  email (customer’s email)


-- orders: Store the following columns:
--  id (auto-incrementing primary key)
--  customer_id (foreign key referencing customers(id))
--  order_date (date when the order was placed)


-- order_items: Store the following columns:
--  order_id (foreign key referencing orders(id))
--  product_id (foreign key referencing products(id))
--  quantity (quantity of the product in the order)


-- Make order_id and product_id a composite primary key.