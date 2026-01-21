-- JSON Data Type


CREATE TABLE table_json(
	id serial primary key,
	docs JSON
)

select * from table_json

insert into table_json(docs)
values
	('[1,2,3,4,5,6]'),
	('[2,3,4,5,6,7]'),
	('{"key": "value"}');

select * from table_json



select * from table_json
where
	docs @> '2'


ALTER TABLE table_json
ALTER COLUMN docs 
TYPE JSONB 