-- 103 NOT NULL Constraints


Create table not_null(
	id serial primary key,
	nn varchar(10) NOT NULL
)


insert into not_null(nn)
values 
	('Hello')

select * from not_null

insert into not_null(nn)
values (NULL)


create table nn2(
	name varchar(10)
)

alter table nn2
alter column name
set NOT NULL








