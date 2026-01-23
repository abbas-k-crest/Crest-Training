-- greatest


select greatest(10,20,30,40,50,60)


select greatest('a', 's', 'd')

select greatest(1, 2, 'a', 's')


select 
	greatest(movie_length)
from movies





-- LEAST

select least(1,2,3,4,56,6,4,3,2)


select least('q', 's', 't', 'y')


select
	revenues_domestic,
	revenues_international,
	greatest(revenues_domestic, revenues_international) as "Greatest"
from movies_revenues
