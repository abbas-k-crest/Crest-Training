-- length

length('Hey there')


select length('Hello World')

Select 
	movie_name,
	length(movie_name) as length_of_char
from movies


select * from movies
where
	length(movie_name) <= 10