-- Numeric
-- real
-- Double


CREATE TABLE table_numeric(
	id SERIAL PRIMARY KEY,
	col_numeric numeric(10, 5),
	col_real real,
	col_double double precision
);


INSERT INTO table_numeric(col_numeric, col_real, col_double)
VALUES
	(0.9, 0.9, 0.9),
	(12.34534, 12.34534, 12.34534),
	(12.43567894563, 12.43567894563, 12.43567894563)

Select * from table_numeric