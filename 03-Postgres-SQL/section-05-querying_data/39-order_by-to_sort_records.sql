SELECT * from movies;

-- sort by language

SELECT * FROM movies
ORDER BY movie_lang ASC;

--  sort by release_date

SELECT 
	*
FROM
	movies
ORDER BY
	release_date ASC;

-- without tag
SELECT 
	*
FROM
	movies
ORDER BY
	release_date;

SELECT 
	*
FROM
	movies
ORDER BY
	release_date DESC;

-- Multiple COLUMN

SELECT * FROM movies
ORDER BY
	release_date DESC,
	movie_name ASC;


	
	