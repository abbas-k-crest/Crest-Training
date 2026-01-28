-- Size of the indexes

select
	pg_size_pretty(pg_indexes_size('products'))


select count(*) from products


-- Size before index
select count(*) from customers


select
	pg_size_pretty(pg_indexes_size('customers'))

create index idx_customers_customer_id ON customers (customer_id)

create unique index idx_customers_first_name ON customers (first_name)

