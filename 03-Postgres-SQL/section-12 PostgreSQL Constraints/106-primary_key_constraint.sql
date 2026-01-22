-- Primary key constraint
create table table_items(
	item_id integer primary key,
	item_name varchar(100) not null
);

select * from table_items;

insert into table_items(item_id, item_name) values (1,'Pen');

-- Constraint naming convention --> Tablename_pkey

-- drop a constraint
alter table table_items
drop constraint table_items_pkey;

-- alter table and add a primary key
alter table table_items
add primary key(item_id, item_name);

insert into table_items(item_id, item_name) values (2,'');
