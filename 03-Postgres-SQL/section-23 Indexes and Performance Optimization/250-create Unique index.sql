-- Unique Indexes


CREATE UNIQUE INDEX idx_u_products_product_id ON products (product_id);

CREATE UNIQUE INDEX idx_u_employees_id ON mydata.public.employees (id);

select * from products

-- Let's try to input duplicte index
insert into products(product_id, product_name, unit_price)
values
	(1, 'Cooling Pad', 250)


CREATE table employees(
	id numeric,
	emp_name varchar(100)
)


CREate unique index idx_u_employees_id on employees (id)

insert into employees(id, emp_name)
values
	(1, 'Abbas'),
	(2, 'Harsh')


	