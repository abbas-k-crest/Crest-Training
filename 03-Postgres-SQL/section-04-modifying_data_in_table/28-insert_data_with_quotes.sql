-- Insert Quotes Data in a table


INSERT INTO customers(first_name, last_name)
VALUES ('Bill'o', 'kapmin');

-- Without error

INSERT INTO customers(first_name, last_name)
VALUES ('Bill''o', 'kapmin');

-- View the Table

SELECT * FROM customers;