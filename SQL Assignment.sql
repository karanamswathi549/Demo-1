
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

INSERT INTO customers VALUES
(101, 'Sai', 'Houston', 35),
(102, 'Deekshith', 'Dallas', 28),
(103, 'Ram', 'Houston', 40),
(104, 'lak', 'Charlotte', 32),
(105, 'venkat', NULL, 45);


SELECT *
FROM customers;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(30),
    balance DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO accounts VALUES
(1001, 101, 'Savings', 1000.00, 'Active'),
(1002, 102, 'Checking', 500.00, 'Active'),
(1003, 103, 'Savings', 2500.00, 'Active'),
(1004, 104, 'Checking', 1500.00, 'Active'),
(1005, 105, 'Savings', 3000.00, 'Inactive');

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

INSERT INTO transactions VALUES
(1, 1001, 'Debit', 300.00, '2026-06-01'),
(2, 1002, 'Credit', 700.00, '2026-06-02'),
(3, 1003, 'Debit', 1200.00, '2026-06-03'),
(4, 1004, 'Credit', 5000.00, '2026-06-04'),
(5, 1005, 'Debit', 10000.00, '2026-06-05');


SELECT *
FROM transactions;



SELECT * FROM customers;
SELECT * FROM accounts;
SELECT * FROM transactions;


SELECT customer_name, city
FROM customers;

SELECT DISTINCT city
FROM customers;

SELECT DISTINCT transaction_type
FROM transactions;

SELECT *
FROM customers
WHERE city = 'Dallas';

SELECT *
FROM customers
WHERE age > 35;

SELECT *
FROM transactions
WHERE amount > 10000;

SELECT *
FROM customers
WHERE city = 'Austin'
AND age > 30;

SELECT *
FROM transactions
WHERE transaction_type = 'Debit'
AND amount > 5000;


SELECT *
FROM transactions
WHERE transaction_type = 'Credit'
OR transaction_type = 'Debit';

SELECT *
FROM customers
WHERE city IN ('Dallas', 'Austin', 'Chicago');

SELECT *
FROM customers
WHERE age IN (25, 35, 45);

SELECT *
FROM transactions
WHERE amount BETWEEN 5000 AND 15000;

SELECT *
FROM customers
WHERE age BETWEEN 30 AND 40;

SELECT *
FROM customers
WHERE customer_name LIKE 'J%';

SELECT *
FROM customers
WHERE customer_name LIKE '%a';

SELECT *
FROM customers
WHERE customer_name LIKE '%a%';

SELECT *
FROM customers
WHERE city IS NULL;

SELECT *
FROM customers
ORDER BY age ASC;

SELECT *
FROM customers
ORDER BY age DESC;

SELECT *
FROM transactions
ORDER BY amount DESC;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT SUM(amount) AS total_transaction_amount
FROM transactions;

SELECT AVG(amount) AS average_transaction_amount
FROM transactions;

SELECT MAX(amount) AS highest_transaction_amount
FROM transactions;

SELECT MIN(amount) AS lowest_transaction_amount
FROM transactions;

SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

SELECT transaction_type, COUNT(*) AS transaction_count
FROM transactions
GROUP BY transaction_type;


SELECT transaction_type, AVG(amount) AS average_amount
FROM transactions
GROUP BY transaction_type;

SELECT transaction_type, MAX(amount) AS highest_amount
FROM transactions
GROUP BY transaction_type;

