CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),s
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Jyothi', 'Dallas', 35),
(2, 'Mat', 'Austin', 28),
(3, 'Jay', 'Houston', 42),
(4, 'Arun', 'Charlotte', 31),
(5, 'Das', 'Dallas', 45),
(6, 'Sara', 'Atlanta', 26),
(7, 'Raju', NULL, 39),
(8, 'Janu', 'Chicago', 33),
(9, 'Manu', 'Houston', 29),
(10, 'Temu', 'Dallas', 37),
(11, 'Ballu', 'Charlotte', 41),
(12, 'Sony', 'Atlanta', 30),
(13, 'Dasu', 'Chicago', 34),
(14, 'Lilly', 'Austin', 27),
(15, 'Tillu', 'New Jersey', 36);



INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 1200.00, 15),
(102, 'Blender', 'Appliances', 100.00, 35),
(103, 'Headphones', 'Electronics', 150.00, 50),
(104, 'Microwave', 'Appliances', 250.00, 30),
(105, 'Jacket', 'Clothing', 120.00, 45),
(106, 'TV', 'Electronics', 700.00, 12),
(107, 'Washing Machine', 'Appliances', 850.00, 10),
(108, 'Sofa', 'Furniture', 1300.00, 5),
(109, 'Rice Bag', 'Grocery', 40.00, 200),
(110, 'Office Chair', 'Furniture', 180.00, 40),
(111, 'Jeans', 'Clothing', 60.00, 100),
(112, 'Refrigerator', 'Appliances', 1100.00, 8),
(113, 'Shoes', 'Clothing', 90.00, 80),
(114, 'Dining Table', 'Furniture', 950.00, 7),
(115, 'Cooking Oil', 'Grocery', 25.00, 150),
(116, 'Coffee Maker', 'Appliances', 180.00, 22),
(117, 'Tablet', 'Electronics', 500.00, 18),
(118, 'Bookshelf', 'Furniture', 300.00, 16),
(119, 'T-Shirt', 'Clothing', 30.00, 120),
(120, 'Smartphone', 'Electronics', 900.00, 25);

INSERT INTO orders VALUES
(1001, 1, 101, 1, 1200.00, '2026-06-01'),
(1002, 1, 103, 2, 300.00, '2026-06-02'),
(1003, 2, 102, 1, 900.00, '2026-06-03'),
(1004, 3, 104, 2, 1400.00, '2026-06-04'),
(1005, 4, 111, 5, 300.00, '2026-06-05'),
(1006, 5, 105, 1, 1100.00, '2026-06-06'),
(1007, 6, 112, 3, 360.00, '2026-06-07'),
(1008, 7, 108, 1, 1300.00, '2026-06-08'),
(1009, 8, 109, 1, 950.00, '2026-06-09'),
(1010, 9, 114, 10, 400.00, '2026-06-10'),
(1011, 10, 107, 1, 850.00, '2026-06-11'),
(1012, 11, 110, 4, 720.00, '2026-06-12'),
(1013, 12, 113, 4, 360.00, '2026-06-13'),
(1014, 13, 115, 20, 500.00, '2026-06-14'),
(1015, 14, 117, 2, 1000.00, '2026-06-15'),
(1016, 15, 106, 2, 500.00, '2026-06-16'),
(1017, 1, 118, 2, 600.00, '2026-06-17'),
(1018, 2, 119, 6, 180.00, '2026-06-18'),
(1019, 3, 120, 3, 300.00, '2026-06-19'),
(1020, 4, 101, 1, 1200.00, '2026-06-20'),
(1021, 5, 102, 2, 1800.00, '2026-06-21'),
(1022, 6, 104, 1, 700.00, '2026-06-22'),
(1023, 7, 105, 1, 1100.00, '2026-06-23'),
(1024, 8, 108, 1, 1300.00, '2026-06-24'),
(1025, 9, 111, 10, 600.00, '2026-06-25'),
(1026, 10, 112, 4, 480.00, '2026-06-26'),
(1027, 11, 113, 5, 450.00, '2026-06-27'),
(1028, 12, 114, 15, 600.00, '2026-06-28'),
(1029, 13, 115, 30, 750.00, '2026-06-29'),
(1030, 14, 116, 3, 540.00, '2026-06-30'),
(1031, 15, 117, 1, 500.00, '2026-07-01'),
(1032, 1, 120, 4, 400.00, '2026-07-02'),
(1033, 2, 110, 2, 360.00, '2026-07-03'),
(1034, 3, 109, 1, 950.00, '2026-07-04'),
(1035, 4, 107, 1, 850.00, '2026-07-05'),
(1036, 5, 118, 1, 300.00, '2026-07-06'),
(1037, 6, 119, 8, 240.00, '2026-07-07'),
(1038, 7, 103, 3, 450.00, '2026-07-08'),
(1039, 8, 102, 1, 900.00, '2026-07-09'),
(1040, 9, 101, 1, 1200.00, '2026-07-10');

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT customer_name, city FROM customers;

SELECT product_name, price FROM products;

SELECT DISTINCT city FROM customers;

SELECT DISTINCT category FROM products;

SELECT * FROM customers WHERE city = 'Dallas';

SELECT * FROM customers WHERE age > 30;

SELECT * FROM products WHERE price > 500;

SELECT * FROM products WHERE stock < 20;

SELECT * FROM orders WHERE total_amount > 1000;

SELECT * FROM customers WHERE city = 'Dallas' AND age > 30;

SELECT * FROM customers WHERE city IN ('Dallas', 'Austin');

SELECT * FROM products WHERE category = 'Electronics';

SELECT * FROM orders WHERE order_date BETWEEN '2026-06-10' AND '2026-06-30';

SELECT * FROM customers WHERE customer_name LIKE 'J%';

SELECT * FROM customers ORDER BY age;

SELECT * FROM products ORDER BY price;

SELECT * FROM orders ORDER BY total_amount;

SELECT * FROM products ORDER BY price DESC LIMIT 5;

SELECT * FROM orders ORDER BY total_amount DESC LIMIT 5;


SELECT COUNT(*) AS total_customers FROM customers;

SELECT COUNT(*) AS total_products FROM products;

SELECT COUNT(*) AS total_orders FROM orders;

SELECT SUM(total_amount) AS total_sales FROM orders;

SELECT AVG(total_amount) AS average_order_value FROM orders;

SELECT MAX(total_amount) AS maximum_order_amount FROM orders;

SELECT MIN(total_amount) AS minimum_order_amount FROM orders;

SELECT AVG(price) AS average_product_price FROM products;


SELECT city, COUNT(*) AS customer_count FROM customers GROUP BY city;

SELECT category, COUNT(*) AS product_count FROM products GROUP BY category;

#33. Total sales by customer
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

#34. Total sales by product
SELECT 
    p.product_name,
    SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name;

#35. Total sales by category
SELECT 
    p.category,
    SUM(o.total_amount) AS total_sales
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.category;

#36. Average order value by city
SELECT 
    c.city,
    AVG(o.total_amount) AS average_order_value
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city;

#37. Maximum order amount by city
SELECT 
    c.city,
    MAX(o.total_amount) AS maximum_order_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city;

#38. Total quantity sold by product
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name;

#39. Display customer name and order amount
SELECT 
    c.customer_name,
    o.total_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id;

#40. Display customer name and product purchased
SELECT 
    c.customer_name,
    p.product_name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id;

#41. Display customer, product, quantity, and amount
SELECT 
    c.customer_name,
    p.product_name,
    o.quantity,
    o.total_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id;

#42. Display customer, city, product, category, and amount
SELECT 
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    o.total_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id;

#43. Complete sales report
SELECT 
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    p.price AS product_price,
    o.quantity,
    o.total_amount,
    o.order_date
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id;

#44.
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spending DESC
LIMIT 5;

#45.
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

#46.
SELECT 
    c.city,
    SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

#47.
SELECT 
    p.category,
    SUM(o.total_amount) AS revenue
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY revenue DESC;

#48.
SELECT 
    c.customer_name,
    o.total_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY o.total_amount DESC
LIMIT 1;

#49
SELECT 
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

#50.
SELECT 
    p.product_name
FROM products p
LEFT JOIN orders o
    ON p.product_id = o.product_id
WHERE o.product_id IS NULL;


#51.
SELECT 
    p.category,
    SUM(o.total_amount) AS sales
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.category
HAVING SUM(o.total_amount) > 10000;

#52.
SELECT 
    c.city,
    SUM(o.total_amount) AS sales
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING SUM(o.total_amount) > 20000;


CREATE OR REPLACE VIEW final_sales_report AS
SELECT 
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    p.price AS product_price,
    o.quantity,
    o.total_amount,
    o.order_date
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id;

SELECT *
FROM final_sales_report;

#1. Who is the highest spending customer?
SELECT 
    customer_name,
    SUM(total_amount) AS total_spending
FROM final_sales_report
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 1;

#2. Which city generated the highest revenue?
SELECT 
    city,
    SUM(total_amount) AS revenue
FROM final_sales_report
GROUP BY city
ORDER BY revenue DESC
LIMIT 1;

#3. Which category generated the highest sales?
SELECT 
    category,
    SUM(total_amount) AS sales
FROM final_sales_report
GROUP BY category
ORDER BY sales DESC
LIMIT 1;

#4. Which product sold the most units?
SELECT 
    product_name,
    SUM(quantity) AS units_sold
FROM final_sales_report
GROUP BY product_name
ORDER BY units_sold DESC
LIMIT 1;

#5. Which products generated the highest revenue?
SELECT 
    product_name,
    SUM(total_amount) AS revenue
FROM final_sales_report
GROUP BY product_name
ORDER BY revenue DESC;

#6. Which customers placed multiple orders?
SELECT 
    customer_name,
    COUNT(*) AS order_count
FROM final_sales_report
GROUP BY customer_name
HAVING COUNT(*) > 1;

#7. What is the average order value?
SELECT 
    AVG(total_amount) AS average_order_value
FROM final_sales_report;

#8. Which products have never been purchased?
SELECT 
    p.product_name
FROM products p
LEFT JOIN orders o
    ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

#9. Create a Top 10 Customers Report
SELECT 
    customer_name,
    SUM(total_amount) AS total_spending
FROM final_sales_report
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 10;



