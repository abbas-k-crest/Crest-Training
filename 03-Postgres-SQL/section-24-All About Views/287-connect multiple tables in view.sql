-- connecting multiple tables in a single view


create or replace view v_movies_directors_revenues AS
SELECT 
	mv.movie_name,
	mv.movie_lang,
	mv.release_date,
	
	d.first_name,
	d.last_name,
	mr.revenues_domestic,
	mr.revenues_international
from movies mv
INNER join directors d using (director_id)
INNER join movies_revenues mr using (movie_id)



-- 
select * from
	v_movies_directors_revenues

select * from
	v_movies_directors_revenues
where movie_lang = 'English'
