-- Create common sequence


CREATE sequence common_fruit START with 100


create table mangoes(
	fruit_id INT DEFAULT nextval('common_fruit'),
	name varchar(100)
)


create table apples(
	fruit_id INT default nextval('common_fruit'),
	name varchar(100)
)

insert into mangoes(name)
values 
	('mango1')


select * from mangoes


insert into apples(name)
values
	('apple1')

select * from apples












