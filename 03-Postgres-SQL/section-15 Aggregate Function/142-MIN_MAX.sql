-- MIN MAX function


select 
	MIN(revenues_domestic) 
from movies_revenues


select min(length(movie_name)) as short_name from movies


-- On date
-- get latest release movie
select max(release_date) from movies
where movie_lang = 'Japanese'




-- MAX
select * from movies_revenues

select max(revenues_domestic) from movies_revenues

select 
	max(revenues_international)
from movies_revenues
group by movie_id



select max(movie_name) from movies
select min(movie_name) from movies

select length(max(movie_name)) from movies
select length(min(movie_name)) from movies

select * from movies

select length(movie_name) from movies
where movie_id = 2




















