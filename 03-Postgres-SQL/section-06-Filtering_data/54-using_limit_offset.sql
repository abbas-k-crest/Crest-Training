-- limit output records


SELECT * FROM movies
Order by
	movie_name
LIMIT 15


-- movie length
select * from movies
order by movie_length desc
limit 5


-- Get top 5 american oldest directors

select * from directors
where
	nationality = 'American'
Order by
	date_of_birth
limit 5;


-- Get Top 10 Youngest female actors
select * from actors
where gender = 'F'
order by date_of_birth DESC
limit 10;

-- Top 10 domestic profitable movies

select * from movies_revenues
order by revenues_domestic desc nulls last
limit 10


-- using Offset

--  list 5 movies from 4th one order by id
select * from movies
order by movie_id
offset 3
limit 5

--  list top 5 movies after the top 5 highest domestic profits movies

select * from movies_revenues
order by revenues_domestic desc NUlls last
limit 5 offset 5

	