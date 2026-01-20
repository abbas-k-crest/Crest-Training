--  Can we use where clause before FROM

SELECT * FROM movies
WHERE movie_lang = 'English'

--  before from 

SELECT * 
WHERE
	movie_lang = 'English'
FROM movies;
-- can't be used


--  Can we use after order by

SELECT * FROM movies
ORDER BY
	movie_name
WHERE
	movie_lang = 'Chinese' -- No Can't use