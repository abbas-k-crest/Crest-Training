-- Distinct keyword in SQL

SELECT * FROM movies;


SELECT DISTINCT movie_name FROM movies;

SELECT movie_lang from movies;



SELECT DISTINCT movie_lang FROM movies;



SELECT DISTINCT movie_lang FROM movies
ORDER BY 1;


-- ALL DISTINCT records
SELECT DISTINCT * FROM movies
ORDER BY movie_id;
