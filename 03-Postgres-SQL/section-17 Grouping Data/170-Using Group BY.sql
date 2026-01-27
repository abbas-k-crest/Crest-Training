-- Group by



select 
	movie_lang,
	COUNT(movie_lang)
from
	movies
GROUP BY
	movie_lang


SELECT movie_length from movies


Select
	AVG(movie_length) from movies


select 
	movie_lang,
	AVG(movie_length) from movies
GROUP BY movie_lang

-- SUM OD all movies by age certificte
SELECT
	age_certificate,
	SUM(movie_length)
from movies
group by age_certificate

SELECT
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
from movies


-- GRoup by without aggregate

select
	movie_length
from movies
group by movie_length
group by movie_lang


	