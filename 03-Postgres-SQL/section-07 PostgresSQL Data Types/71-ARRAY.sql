--  ARRAY DATA type


CREATE TABLE table_array(
	id serial primary key,
	class_name varchar(100),
	phone text []

);

select * from table_array

insert into table_array(class_name, phone)
values
	('Abbas', ARRAY ['919537', '91786306'])

insert into table_array(class_name, phone)
values
	('Harsh', ARRAY ['785412', '91526436'])

SELECT 
	class_name,
	phone [1] from table_array

SELECT class_name from table_array
where 
	phone[1] = '785412'


	