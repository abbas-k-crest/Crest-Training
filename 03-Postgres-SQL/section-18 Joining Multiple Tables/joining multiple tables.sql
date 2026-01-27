-- Joining multiple tables

select
	*
from movies mv
JOIN directors using (director_id)
JOIN movies_revenues using (movie_id)
order by directors.first_name ASC













