CREATE DATABASE customerss;
USE customerss;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers (customer_id, customer, mode, city)
VALUES
(101, "olivia barrett", "netbanking", "portland"),
(102, "Ethan sinclair", "credit card", "miami"),
(103, "maya hemandez", "credit card", "seattle"),
(104, "liam donovan", "netbanking", "denver"),
(105, "sophia ngyuen", "credit card", "New Orleans"),
(106, "caleb foster", "debit card", "minneapolis"),
(107, "ava patel", "debit card", "phoenix"),
(108, "lucas carter", "netbanking", "boston"),
(109, "isabella martinez", "netbanking", "Nashville"),
(110, "jackson brooks", "credit card", "boston");


SELECT mode, COUNT(customer) 
FROM customers 
GROUP BY mode;