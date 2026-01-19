-- Adding alias to the columns

SELECT * FROM actors;

-- Rename first_name to firstname

SELECT first_name AS firstName from actors;

SELECT first_name AS "firstName" from actors;

SELECT first_name AS "first Name" from actors;

-- is AS keyword optional

SELECT
	movie_name AS "Movie",
	movie_lang "Language"
FROM
	movies;
-- Yes it is!!

SELECT
	movie_name AS 'Movie',
FROM
	movies;
-- Can't use single quote
	