-- Nickolas Kavanagh - SD12
-- Semester 3 - Database Programming
-- 2025/02/03 - 2025/02/10


-- Problem 2: Online Store Inventory and Orders System

-- Insert Data:

-- Insert at least 5 products, 4 customers, and 5 orders
-- (each order should have at least two items ordered)


INSERT INTO products (product_name, price, stock_quantity) VALUES
('Buzz Cola', 1.99, 120),
('Malibu Stacy Doll', 19.99, 10),
('Pawtucket Ale', 2.99, 120),
('Duff Beer', 2.99, 120),
('McBurgertown Burger', 4.99, 40),
('Meg Ahoy Cookies', 7.99, 60),
('Buttscratcher', 11.99, 20),
('Ribwich', 6.99, 30),
('Donuts', 2.99, 60),
('Guatemalan Insanity Pepper', 14.99, 10),
('Tomacco', 0.99, 60);


INSERT INTO customers (first_name, last_name, email) VALUES
('Bart', 'Simpson', 'eatmyshorts@aol.com'),
('Lisa', 'Simpson', 'L-Simpson-Jazzgirl@aol.com'),
('Chris', 'Griffin', 'evilmonkey@yahoo.com'),
('Meg', 'Griffin', 'megatrongriffin@yahoo.com'),
('Stewie', 'Griffin', 'loismustdie@yahoo.com');


INSERT INTO orders (customer_id, order_date) VALUES
(2, '2025-01-03'),
(4, '2025-01-05'),
(1, '2025-01-10'),
(3, '2025-01-12'),
(5, '2025-01-18'),
(2, '2025-01-20'),
(4, '2025-01-25'),
(1, '2025-01-27'),
(3, '2025-01-29'),
(5, '2025-01-31');


INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 3, 2),
(1, 7, 1),
(2, 1, 3),
(2, 4, 2),
(3, 6, 1),
(3, 8, 4),
(4, 2, 2),
(4, 5, 1),
(5, 9, 3),
(5, 10, 2),
(6, 1, 1),
(6, 3, 2),
(7, 4, 3),
(7, 6, 1),
(8, 2, 2),
(8, 7, 1),
(9, 5, 3),
(9, 8, 2),
(10, 9, 1),
(10, 10, 4);