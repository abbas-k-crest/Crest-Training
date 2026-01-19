-- create movies Table
-- Movies have director
--  Give reference of directory from directors table

CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100) NOT NULL,
	movie_length INT,
	movie_lang VARCHAR(50),
	age_certificate VARCHAR(20),
	release_date DATE,
	director_id INT REFERENCES directors (director_id),
	add_date DATE,
	update_date DATE
);


SELECT * FROM movies;