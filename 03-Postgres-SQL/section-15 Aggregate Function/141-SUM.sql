-- SUM function

select * from movies_revenues

select sum(revenues_domestic) from movies_revenues


select sum(1+2)

-- TOTAL revenue

select
	SUM(revenues_domestic + revenues_international)
from movies_revenues


-- total movies_length for english movies

select 
	sum(movie_length) AS "Total English Length"
from movies
where
	movie_lang = 'English'


-- total char
select
	SUM(length(movie_name))
from movies


