-- Date Data type

CREATE TABLE table_date(
	id SERIAL PRIMARY  KEY,
	col_date DATE
);

INSERT INTO table_date(col_date)
VALUES 
	('2025-01-01'),
	('2025-01-02'),
	('2025-01-03'),
	('2025-01-04'),
	('2025-01-05'),
	('2025-01-06'),
	('2025-01-07'),
	('2025-01-08'),
	('2025-01-09'),
	('2025-01-10'),
	('2025-01-11'),
	('2025-01-12'),
	('2025-01-13');


SELECT * FROM table_date


ALTER TABLE table_date
ALTER COLUMN col_date
SET DEFAULT CURRENT_DATE


INSERT INTO table_date(id) VAlues (45)


ALTER TABLE table_date
ADD COLUMN emp_name VARCHAR(100)



INSERT INTO table_date(emp_name) VALUES ('Abbas') returning *;


SELECT * from table_date
where col_date = CURRENT_DATE


SELECT NOW()
