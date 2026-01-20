CREATE TABLE test_bool(
	id SERIAL PRIMARY KEY,
	is_available BOOLEAN
);

INSERT INTO test_bool(is_available) 
VALUES (FALSE)

INSERT INTO test_bool(is_available) 
VALUES (TRUE)

INSERT INTO test_bool(is_available) 
VALUES ('true')

INSERT INTO test_bool(is_available) 
VALUES ('false')

INSERT INTO test_bool(is_available) 
VALUES ('t')

INSERT INTO test_bool(is_available) 
VALUES ('f')

INSERT INTO test_bool(is_available) 
VALUES ('1')

INSERT INTO test_bool(is_available) 
VALUES ('0')

INSERT INTO test_bool(is_available) 
VALUES ('yes')

INSERT INTO test_bool(is_available) 
VALUES ('no')

INSERT INTO test_bool(is_available) 
VALUES 
	('y'),
	('n');

SELECT * FROM test_bool



SELECT * FROM test_bool
Where is_available = TRUE

SELECT * FROM test_bool
Where is_available = '1'


SELECT * FROM test_bool
Where NOT is_available

SELECT * FROM test_bool
Where is_available

--  SET DEFAULT to FALSE
ALTER TABLE test_bool
ALTER COLUMN is_available
SET DEFAULT TRUE

