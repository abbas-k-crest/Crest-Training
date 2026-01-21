-- create table

create table web_link(
	id serial primary key,
	link_url varchar(100) not null,
	link_target varchar(100) not null
);

select * from web_link


insert into web_link(link_url, link_target)
values
	('http://www.google.com', '_blank')


-- unique constratints
alter table web_link
add constraint unique_web_url UNIQUE (link_url);


-- only allowed values
alter table web_link
add column is_enable varchar(2);


insert into web_link(link_url, link_target, is_enable)
values
	('http://www.amazon.com', '_b', 'y'),
	('http://www.filpkart.com', '_b', 'n')


select * from web_link

alter table web_link
ADD check (is_enable IN ('y', 'n'));

insert into web_link(link_url, link_target, is_enable)
values
	('http://www.xyz.com', '_b', 't')



-- update data
update web_link
SET is_enable = 't' 
returning *





	
