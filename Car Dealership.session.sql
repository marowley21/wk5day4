DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
);

DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    years VARCHAR,
    amount NUMERIC,
     FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

SELECT * FROM customer

SELECT customer.first_name, customer.last_name, inventory.inventory_id, inventory.amount
FROM customer
INNER JOIN inventory
ON customer.customer_id = inventory.customer_id;

SELECT customer.first_name, customer.last_name, inventory.inventory.amount
FROM customer
LEFT JOIN inventory
ON customer.customer_id = inventory.customer_id;

SELECT customer.first_name, customer.last_name, inventory.amount
FROM customer
RIGHT JOIN inventory
ON customer.customer_id = inventory.customer_id;
