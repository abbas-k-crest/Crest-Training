-- attach sequence to table

create table users(
	id serial primary key,
	name varchar(100)
)


insert into users(name) values ('Abbas')


-- create a seq for enrl
create sequence enrollment 

alter sequence enrollment
owned by users.enrl



alter table users
add column enrl int

select * from users


alter table users
alter column enrl
SET default nextval('enrollment')

insert into users(name) values('yohho')






