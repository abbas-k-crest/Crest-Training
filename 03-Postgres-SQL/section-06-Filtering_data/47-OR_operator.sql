--  OR Operator

SELECT 
	*
FROM 
	movies;



SELECT * FROM movies
WHERE
	movie_lang = 'English'
	OR
	movie_lang = 'Chinese'



SELECT * FROM movies
WHERE
	movie_lang = 'English'
	OR
	movie_lang = 'Chinese'
ORDER BY
	movie_lang;


SELECT * FROM movies
WHERE
	movie_lang = 'English'
	AND
	director_id = 9


SELECT * FROM movies
WHERE
	movie_lang = 'Chinese'
	OR
	director_id = 9



