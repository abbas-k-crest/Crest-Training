-- Handling null value in group by

create table employee_test(
	id serial primary key,
	name varchar(100),
	dept varchar(100)
)

insert into employee_test(name, dept)
values
	('Abbas', 'IT'),
	('Harsh', NULL),
	('Maitreya', 'IT'),
	('Pratik', NULL)

select * from employee_test


select 
	dept,
	count(*)
from employee_test
group by dept













