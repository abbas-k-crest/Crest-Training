--  Combination or AND OR operator

-- Without parenthesis
SELECT * FROM movies
WHERE
	movie_lang = 'English'
	OR
	movie_lang = 'Chinese'
	AND
	age_certificate = '12'

-- With Parenthesis
SELECT * FROM movies
WHERE
	(movie_lang = 'English'
	OR
	movie_lang = 'Chinese')
	AND
	age_certificate = '12'

-- Order BY Name
SELECT * FROM movies
WHERE
	(movie_lang = 'English'
	OR
	movie_lang = 'Chinese')
	AND
	age_certificate = '12'
ORDER BY
	movie_name;