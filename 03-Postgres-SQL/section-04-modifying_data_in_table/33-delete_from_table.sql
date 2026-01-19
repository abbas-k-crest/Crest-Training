-- DELETE DATA from a table


SELECT * FROM customers;

--  DELETE query

DELETE from customers
where customer_id = 10;

--  DELETE query

DELETE from customers
where customer_id = 9
RETURNING *;

-- Delete all records

DELETE FROM customers;


