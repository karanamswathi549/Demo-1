CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(50),
    city VARCHAR(50),
    rating DECIMAL(3,2)
);

CREATE TABLE trips (
    trip_id INT PRIMARY KEY,
    driver_id INT,
    fare DECIMAL(10,2),
    trip_type VARCHAR(20),
    trip_date DATE,
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    driver_id INT,
    vehicle_type VARCHAR(20),
    vehicle_year INT,
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);

INSERT INTO drivers VALUES
(1, 'Jaya', 'Charlotte', 4.80),
(2, 'Manoj', 'Atlanta', 4.30),
(3, 'Arjun', NULL, 4.70),
(4, 'Joe', 'Charlotte', 4.90),
(5, 'David', 'Houston', 4.20),
(6, 'Lucky', 'Atlanta', 4.60),
(7, 'Rose', 'New Jersey', 4.10),
(8, 'Sri', 'Dallas', 4.50),
(9, 'Sai', 'Charlotte', 4.40),
(10, 'Bhanu', 'Austin', 4.00);

INSERT INTO trips VALUES
(101, 1, 45.00, 'Standard', '2026-06-01'),
(102, 1, 75.00, 'Premium', '2026-06-12'),
(103, 2, 30.00, 'Standard', '2026-06-03'),
(104, 3, 90.00, 'Premium', '2026-06-02'),
(105, 4, 55.00, 'Standard', '2026-06-04'),
(106, 4, 85.00, 'Premium', '2026-06-25'),
(107, 5, 20.00, 'Standard', '2026-06-06'),
(108, 6, 65.00, 'Premium', '2026-06-27'),
(109, 7, 35.00, 'Standard', '2026-06-07'),
(110, 8, 100.00, 'Premium', '2026-06-09'),
(111, 9, 25.00, 'Standard', '2026-06-10'),
(112, 10, 40.00, 'Standard', '2026-06-11'),
(113, 1, 60.00, 'Premium', '2026-06-12'),
(114, 2, 15.00, 'Standard', '2026-06-13'),
(115, 3, 70.00, 'Premium', '2026-06-14'),
(116, 4, 95.00, 'Premium', '2026-06-15'),
(117, 5, 28.00, 'Standard', '2026-06-16'),
(118, 6, 48.00, 'Standard', '2026-06-17'),
(119, 7, 52.00, 'Premium', '2026-06-18'),
(120, 8, 33.00, 'Standard', '2026-06-19'),
(121, 9, 88.00, 'Premium', '2026-06-20'),
(122, 10, 22.00, 'Standard', '2026-06-21'),
(123, 1, 110.00, 'Premium', '2026-06-22'),
(124, 3, 42.00, 'Standard', '2026-06-23'),
(125, 6, 78.00, 'Premium', '2026-06-24');

INSERT INTO vehicles VALUES
(201, 1, 'BMW', 2021),
(202, 2, 'Toyota', 2020),
(203, 3, 'Tesla', 2022),
(204, 4, 'Toyota', 2023),
(205, 5, 'Honda', 2019),
(206, 6, 'Tesla', 2021),
(207, 7, 'Audi', 2020),
(208, 8, 'Ferrari', 2022),
(209, 9, 'Honda', 2018),
(210, 10, 'Audi', 2023);

CREATE TABLE drivers_audit (
    audit_id SERIAL PRIMARY KEY,
    driver_id INT,
    old_city VARCHAR(50),
    new_city VARCHAR(50),
    old_rating DECIMAL(3,2),
    new_rating DECIMAL(3,2),
    changed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE trips_audit (
    audit_id SERIAL PRIMARY KEY,
    trip_id INT,
    old_fare DECIMAL(10,2),
    new_fare DECIMAL(10,2),
    old_trip_type VARCHAR(20),
    new_trip_type VARCHAR(20),
    changed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vehicles_audit (
    audit_id SERIAL PRIMARY KEY,
    vehicle_id INT,
    old_vehicle_type VARCHAR(20),
    new_vehicle_type VARCHAR(20),
    old_vehicle_year INT,
    new_vehicle_year INT,
    changed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM drivers;
SELECT * FROM trips;
SELECT * FROM vehicles;

INSERT INTO drivers_audit
(driver_id, old_city, new_city)
VALUES
(5, 'Houston', 'New York');

UPDATE drivers
SET city = 'New York'
WHERE driver_id = 5;

SELECT *
FROM drivers_audit;