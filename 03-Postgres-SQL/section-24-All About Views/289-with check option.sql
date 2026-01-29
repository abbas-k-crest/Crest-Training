-- check with view

create table countries(
	country varchar(100) check (country in ('US')),
	city varchar(100)
)


insert into countries(country, city)
values 
	('US', 'New York'),
	('US', 'New Jersey')


create or replace view vu_countries AS
select * from countries
where country = 'US'
with check option


select * from vu_countries


insert into vu_countries(country, city)
values ('UK', 'London')







