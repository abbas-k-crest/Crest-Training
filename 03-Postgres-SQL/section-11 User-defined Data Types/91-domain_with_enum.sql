

create domain valid_color varchar(10)
check (VALUE IN ('red', 'green', 'blue'))



create table colors(
	id serial primary key,
	color valid_color
)



insert into colors(color)
values
	('red'),
	('green'),
	('blue')


select * from colors


insert into colors(color)
values
	('orange')






























