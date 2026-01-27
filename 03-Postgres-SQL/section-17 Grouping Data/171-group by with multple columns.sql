-- GROUP BY multiple columns

SELECT * from movies

SELECT 
	movie_lang,
	age_certificate,
	AVG(movie_length)
from 
	movies
GROUP BY
	movie_lang,
	age_certificate

SELECT 
	movie_lang,
	age_certificate,
	AVG(movie_length)
from 
	movies
GROUP BY
	movie_lang,
	age_certificate
ORDER BY
	movie_lang,
	age_certificate

-- with where clause

select 
	movie_lang,
	AVG(movie_length)
from movies
where movie_length > 100
group by movie_lang

select
	age_certificate,
 	AVG(movie_length)
from
	movies
where
	age_certificate = '12'
group by age_certificate


-- Directory in nationality
select * from directors



select
	nationality,
	COUNT(*)
from directors
group by nationality


select 
	movie_lang,
	age_certificate,
	SUM(movie_length)
from movies
GROUP by movie_lang, age_certificate
ORDER BY 3 DESC