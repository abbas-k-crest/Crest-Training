-- Inner Join

select 
	*
from
	movies
JOIN directors
ON movies.director_id = directors.director_id


select
	movies.movie_name,
	directors.first_name,
	directors.last_name
from movies
JOIN directors
ON movies.director_id = directors.director_id

-- filter with joining

select
	mv.movie_name,
	d.first_name
from directors d
INNER JOIN movies mv
ON
	d.director_id = mv.director_id
Where mv.movie_lang = 'English'



	