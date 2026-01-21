-- UUID DATA TYPE
-- 128 bit very very unique

-- Third party extension

CREATE EXTENSION IF NOT EXISTS "UUID-OSSP";


select uuid_generate_v1()

select uuid_generate_v4()


CREATE TABLE table_uuid(
	id UUID DEFAULT uuid_generate_v1(),
	p_name varchar(100)
);


INSERT INTO table_uuid(p_name)
VALUES
	('NORTH') 
RETURNING *;


SELECT * FROM table_uuid


ALTER TABLE table_uuid
ALTER COLUMN id
SET DEFAULT uuid_generate_v4()

