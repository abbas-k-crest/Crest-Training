CREATE TABLE persons(
	id serial primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null
);

ALter table persons
ADD column age int not null


select * from persons

alter table persons
ADD column nationality varchar(20) not null,
ADD column email varchar(100) unique