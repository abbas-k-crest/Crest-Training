-- 

Select 
	mv.movie_name,
	d.first_name,
	mr.revenues_domestic
from movies mv
INNER JOIN directors d using (director_id)
INNER JOIN movies_revenues mr USING (movie_id)
where
	mv.movie_lang IN ('English', 'Chinese')
	AND mr.revenues_domestic > 100
Order by 3 desc



select
	mv.movie_name,
	d.first_name,
	mv.movie_lang
from movies mv
INNER JOIN directors d using (director_id)
ORDER BY mv.movie_length DESC LIMIT 5







	