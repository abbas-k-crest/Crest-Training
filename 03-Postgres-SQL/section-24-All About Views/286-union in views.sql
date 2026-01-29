create view v_all_actors_directors as 
select
	first_name,
	last_name,
	'actors' as people_type
from actors
union all 
select
	first_name,
	last_name,
	'directors' as people_type
from directors;

select
*
from v_all_actors_directors
where first_name like 'J%'
order by people_type, first_name;