-- COUNT


select COUNT(*) from movies



select count(movie_length) from movies


select count(distinct (movie_lang)) from movies



select count(distinct(movie_length)) from movies


select count(*) from movies
where	
	movie_lang = 'English'