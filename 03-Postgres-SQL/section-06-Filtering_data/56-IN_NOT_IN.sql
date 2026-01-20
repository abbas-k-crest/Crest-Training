-- IN and NOT IN operator

--  get specific languages movies

select * from movies
where 
	movie_lang IN ('English', 'Japanese')
ORDER BY movie_lang

--  Get all rows expect the specific language
select * from movies
where movie_lang NOT IN ('Spanish', 'Japanese')

--  age certifiacte in 13 anf pg
select * from movies
where age_certificate IN ('12', 'PG')
order by age_certificate

--  all movies where age not 13 or 18

select * from movies 
where age_certificate NOT IN ('13', '18')
order by age_certificate

--  all actors expect 1, 2, 3, 4

select * from actors
where actor_id NOT IN ('1', 2, '3', 4)