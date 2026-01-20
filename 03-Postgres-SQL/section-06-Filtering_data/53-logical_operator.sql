Select * from movies;


--  logical Operator

-- Greater than
select * from movies
Where movie_length > 100;

-- Greater than or equal to
select * from movies
where movie_length >= 100 

-- Less than
select * from movies
where movie_length < 100

-- Less than or equal to
select * from movies
where movie_length <= 100


-- Not equal to
select * from movies
where movie_lang <> 'English'

--  or we can do
select * from movies
where movie_lang != 'English'


-- With Date
select * from movies
where release_date >= '2010-01-01'


-- Integer Column with quotes
select * from movies
where movie_length >= '100'

