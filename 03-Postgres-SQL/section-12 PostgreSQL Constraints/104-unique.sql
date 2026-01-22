-- UNIQUE CONSTRAINTS

create table uni(
	id serial primary key,
	un int unique
)


insert into uni(un)
values (1)

select * from uni

insert into uni(un)
values (2),
(3),
(4)


insert into uni(un) values (1)



