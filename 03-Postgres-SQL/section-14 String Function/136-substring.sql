-- SUBSTRING


select substring('Wonderful Day' from 1 for 4) -- n char from the position



select substring('It prints only selected position' from 2 for 10) -- 10 char from 2nd


select 
	movie_name,
	release_date,
	length(release_date::text),
	substring(release_date::text from 6 for 2) as "month"
from movies





