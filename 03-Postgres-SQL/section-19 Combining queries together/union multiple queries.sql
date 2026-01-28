-- combining queries


select 
	movie_name
from movies
UNION
select movie_name from movies
-- this gives union with unique

-- for all record

select
	* from movies
UNION ALL
select * from movies


select first_name, last_name from actors
UNION
select first_name, last_name from directors