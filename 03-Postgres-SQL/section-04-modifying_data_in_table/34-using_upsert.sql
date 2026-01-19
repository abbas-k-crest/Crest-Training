--  Using UPSERT

-- Will update the exisiting row or if not exisits insert a new row


-- Let's create a table

CREATE TABLE test(
	test_id SERIAL PRIMARY KEY,
	name VARCHAR(150) UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()
);

-- View
SELECT * FROM test;


-- Insert Data
INSERT INTO test(name)
VALUES 
('Abbas'),
('Harsh');


-- Let's add same name again and do nothing on conflict
INSERT INTO test(name)
VALUES 
	('Abbas')
ON 
	CONFLICT (name) 
DO 
	NOTHING;

-- Let's add the record on conflict
INSERT INTO test(name)
VALUES 
	('Abbas')
ON 
	CONFLICT (name) 
DO 
	UPDATE SET
	name = EXCLUDED.name,
	update_date = NOW();




