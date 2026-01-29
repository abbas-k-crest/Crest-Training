

CREATE or replace view vu_directors AS
select 
	first_name,
	last_name
from directors

-- insert from view
INSERT  into vu_directors (first_name) values ('Dir1')

select * from directors
where first_name = 'Dir1'

-- delete from view

Delete from vu_directors
where first_name = 'Dir1'


-- update with view
UPDATE vu_directors
SET last_name = 'last1'
where first_name = 'Dir1'

















