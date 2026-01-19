-- Update ALL Records in a table


SELECT * FROM customers;

-- update

UPDATE customers
SET age = 100;


-- update Multiple columns

UPDATE customers
SET 
	is_enable = 'Y'
RETURNING *;
