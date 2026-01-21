-- hstore data type

-- install hstore

CREATE EXTENSION if not exists hstore;



-- create table
create table table_hstore(
	id serial primary key,
	book_name varchar(100),
	info_data hstore
)
;


insert into table_hstore(book_name, info_data)
values
	(
	'Title 1',
	'
		"publisher" => "ABC",
		"price" => "99.9",
		"unit" => "2000"
	'
	)
	

select * from table_hstore


select 
	book_name,
	info_data['unit']
from table_hstore

select 
	book_name,
	info_data['not_exists']
from table_hstore


select 
	book_name,
	info_data['unit']
from table_hstore
where
	info_data['price'] = '99.9'


select 
	info_data -> 'publisher' as publisher,
	info_data -> 'unit' as unit,
	info_data -> 'not_data' as no_data
from table_hstore
