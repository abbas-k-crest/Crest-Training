-- create composite inventory item

create type inventory_item AS (
	name varchar(100),
	supplier INT,
	price numeric
)



-- Create table
create table inventory (
	id serial primary key,
	item inventory_item
)

-- Retreive
select * from inventory



-- Insert data
insert into inventory(item)
VALUES
	(ROW ('Pen', '21', '5.9')),
	(ROW ('Pencil', '22', '3.9')),
	(ROW ('Sharpner', '23', '10.9')),
	(ROW ('Eraser', '21', '2.9'));


Select (inventory.item).name from inventory



select (item).name from inventory
where
	(item).price <= 6

