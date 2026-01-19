-- create a junction table to
-- join movies and actors


CREATE TABLE movies_actors (
	movie_id INT REFERENCES movies (movie_id),
	actor_id INT REFERENCES actors (actor_id),
	add_date DATE,
	update_date DATE,
	PRIMARY KEY (movie_id, actor_id)
);

SELECT * FROM movies_actors;