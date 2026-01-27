-- Right JOIN

select * from movies

select* from directors


select 
	*
from 
	movies mv
RIGHT JOIN  
	directors d 
using (director_id)