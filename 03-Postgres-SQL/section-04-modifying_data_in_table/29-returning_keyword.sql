-- Insert Data in a table


INSERT INTO customers(first_name)
VALUES ('Adam');

-- Return all rows while inserting

INSERT INTO customers(first_name)
VALUES ('Joseph') RETURNING *;

-- Return only single column

INSERT INTO customers(first_name)
VALUES ('Yusuf') RETURNING customer_id;

-- Return custom column

INSERT INTO customers(first_name)
VALUES ('Yusuf') RETURNING customer_id, first_name;


