--  Using FETCH

select * from movies
FETCH FIRST ROW ONLY

select * from movies
FETCH FIRST 5 ROW ONLY

-- Top 5 Biggest movie length
select * from movies
order by movie_length DESC
FETCH FIRST 5 ROW ONLY

-- Top 5 oldest americans directors 
select * from directors
order by date_of_birth
FETCH FIRST 5 ROW ONLY

--  Top 10 youngest male actors
select * from actors
where gender = 'M'
order by date_of_birth desc nulls last
fetch first 10 row only


-- Get 5 movies from the 5th records onwards by long movie length

select * from movies
order by movie_length desc
fetch first 5 Row only offset 4


