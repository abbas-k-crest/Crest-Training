-- SPLIT_PART

-- SPLIT_PART(string, delimiter, position)


Select split_part('hello this is a string', ' ', 2) -- output `this`


select split_part('1,2,3,4,5,6,7,8,9', ',', 1)


select split_part('1|2|3|4|5|6|7|8', '|', 4)


select* from movies
select 
	movie_name,
	split_part(release_date::text, '-', 1) as Year
from movies
