-- View with filter

Select * from movies
where release_date >= '1991-06-20'
Order by release_date


-- Create a view
create or replace view v_movies_date_greater_1991 AS
Select * from movies
where release_date >= '1991-12-31'
Order by release_date



-- from view data get only movie with lang = English
Select *
from
	v_movies_date_greater_1991
Where
	movie_lang = 'English'
-- 21 entries

-- total eng movies
select * from movies
where movie_lang = 'English'
-- 38 entries

-- View which has join on movies and directoers table
select * from
	v_movies_directors_all
where nationality = 'American'


