-- CREATE DATABASE TABLES

-- -- Create customer table
-- CREATE TABLE customers (
--     customer_id INTEGER PRIMARY KEY,
--     name TEXT NOT NULL,
--     email TEXT UNIQUE,
--     country TEXT
-- );

-- -- Create product table
-- CREATE TABLE products (
--     product_id INTEGER PRIMARY KEY,
--     name TEXT NOT NULL,
--     price REAL NOT NULL,
--     category TEXT
-- );

-- -- Create orders table
-- CREATE TABLE orders (
--     order_id INTEGER PRIMARY KEY,
--     customer_id INTEGER,
--     product_id INTEGER,
--     quantity INTEGER,
--     order_date TEXT,
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
--     FOREIGN KEY (product_id) REFERENCES products(product_id)

-- );

-- ADD SAMPLES DATA

-- -- Customers
-- INSERT INTO customers (name, email, country) VALUES
-- ('Alice Johnson', 'alice@example.com', 'Australia'),
-- ('Bob Lee', 'bob@example.com', 'USA'),
-- ('Chloe Zhang', 'chloe@example.com', 'China');

-- -- Products
-- INSERT INTO products (name, price, category) VALUES
-- ('iPhone 15', 1299.99, 'Electronics'),
-- ('AirPods Pro', 399.99, 'Electronics'),
-- ('Office Chair', 159.00, 'Furniture');

-- -- Orders
-- INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
-- (1, 1, 1, '2024-01-15'),
-- (1, 2, 2, '2024-02-05'),
-- (2, 3, 1, '2024-02-25'),
-- (3, 1, 1, '2024-03-10');


SELECT * FROM customers;

SELECT * FROM products;