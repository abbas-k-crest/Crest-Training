-- Left join

alter table directors
DROP column update_date

DELETE from movies
where director_id = 1

select * from movies where director_id = 1

Delete from movies_revenues
where movie_id = 20

DELETE FROM movies_actors
WHERE movie_id = 20;


select 

SELECT
	* from directors
LEFT JOIN movies using (director_id)
ORDER BY directors.director_id

select * from directors
select * from movies

select 
	mv.movie_name,
	d.first_name,
	d.last_name
from directors d
LEFT JOIN movies mv using (director_id)


insert into directors(first_name, last_name)
values
	('Abbas', 'Kothari')


select * from directors


select 
	d.first_name,
	mv.movie_name
from directors d
LEFT JOIN movies mv using (director_id)









