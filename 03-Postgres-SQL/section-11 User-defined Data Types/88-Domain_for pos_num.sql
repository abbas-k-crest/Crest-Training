-- create a domain

CREATE DOMAIN positive_num int not null check(value > 0)



CREATE TABLE sample(
	id serial primary key,
	value positive_num
)

insert into sample(value)
values
	('1'),
	(2),
	(3)

select * from sample


insert into sample(value)
values
	(-3)