-- Renamea table

ALTER TABLE users
RENAME TO persons

select * from users
select * from persons  


-- alter column name

ALter table persons
RENAME COLUMN age to person_age


select * from persons  

-- Drop column
ALTER TABLE persons
DROP column person_age


-- add again
alter table persons
ADD column age int



-- change datatype
alter table persons
Alter column age TYPE int
USING age::integer;

-- bool column
ALter table persons
add column is_enable bool


-- add default
alter table persons
alter column is_enable
SET default 'y'



insert into persons(first_name, last_name, nationality)
values
	('abbas', 'kothari', 'IND')

select * from persons


-- remove not null from nationality
alter table persons
alter column nationality drop not null


insert into persons(first_name, last_name)
values
	('abbas', 'kothari')

select * from persons

	





