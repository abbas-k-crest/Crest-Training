-- having clause with group by

select
	movie_lang,
	SUM(movie_length)
from movies
where movie_length >=200
group by movie_lang

select
	movie_lang,
	SUM(movie_length)
from movies
group by movie_lang
having SUM(movie_length) >=200