CREATE TYPE address AS (
	street VARCHAR(40),
	city VARCHAR(30),
	code CHAR(4)
);

CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(40),
	"address" address
);

INSERT INTO customers (customer_name, customer_address)
VALUES  ('Customer_name', ('street_name', 'city_name', 'city_code')); 