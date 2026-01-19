-- create movies_revenue table
-- movies movie_id as foreign key

CREATE TABLE movies_revenues (
	revenue_id SERIAL PRIMARY KEY,
	movie_id INT REFERENCES movies (movie_id),
	revenues_domestic NUMERIC (10, 2),
	revenues_international NUMERIC (10, 2),
	add_date DATE,
	update_date DATE
);