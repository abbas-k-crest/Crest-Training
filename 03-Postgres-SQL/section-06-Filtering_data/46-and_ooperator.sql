-- Comparision Operation

SELECT * FROM movies
WHERE
	1 = 1;

SELECT * FROM movies
WHERE
	1 <> 1;


--  Get all english movies from the movies

SELECT * FROM movies
WHERE 
	movie_lang = 'English';


--  Get movies with language english and age = 18

SELECT * FROM movies
WHERE 
	movie_lang = 'English'
	AND
	age_certificate = '18';

