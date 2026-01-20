--  BETWEEN and NOT BETWEEN

select * from actors 
where date_of_birth BETWEEN '1991-01-01' AND '1991-12-31'
Order By date_of_birth

-- Get movies released between 1998 and 2002

select * from movies
where release_date BETWEEN '1998-01-01' AND '2002-12-31'
order by release_date


--  Get english movie in length between 100 and 150

select * from movies
where 
	movie_lang = 'English'
	AND
	movie_length BETWEEN 100 AND 150
order by movie_length

--  Not Between

select * from movies
where 
	movie_lang = 'English'
	AND
	movie_length NOT BETWEEN 100 AND 150
order by movie_length