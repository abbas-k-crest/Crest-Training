-- Create Table name customer

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	email VARCHAR(150),
	age INT
);

-- View the Table

SELECT * FROM customers;


-- Insert data in table

INSERT INTO customers(first_name, last_name, email, age)
VALUES ('Adnan', 'Waheed', 'aw@b.com', 26)


