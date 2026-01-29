-- View

SELECT * from 
	movies


-- create view with movie_name_ length, release_date

select 
	movie_name,
	movie_length,
	release_date
from movies

CREATE OR REPLACE VIEW v_movie_quick AS 
select 
	movie_name,
	movie_length,
	release_date
from movies mv


-- use view now
CREATE OR REPLACE VIEW v_movies_directors_all AS
SELECT 
	mv.movie_id,
	mv.movie_name,
	mv.movie_lang,
	mv.movie_length,
	mv.release_date,
	d.director_id,
	d.first_name,
	d.last_name,
	d.date_of_birth,
	d.nationality
from movies mv
INNER JOIN directors d ON d.director_id = mv.director_id 


