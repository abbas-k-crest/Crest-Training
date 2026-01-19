-- Update Data in a table


SELECT * FROM customers;

-- update

UPDATE customers
SET email = 'adnan@gmail.com'
where customer_id = 1
RETURNING *;

-- update Multiple columns

UPDATE customers
SET 
	email = 'changed@gmail.com', 
	age = 50
where 
	customer_id = 1
RETURNING *;
