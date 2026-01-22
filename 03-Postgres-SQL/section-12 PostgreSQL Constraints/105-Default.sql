-- Default constraints

CREATE TABLE employees(
	id serial primary key,
	first_name varchar(100),
	is_enable boolean DEFAULT TRUE
)



select * from employees

insert into employees(first_name)
values
	('Abbas')


Alter table employees
ALter column is_enable
SET DEFAULT FALSE



insert into employees(first_name)
values
	('Harsh')

