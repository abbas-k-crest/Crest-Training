select * from pg_am

explain select * from products

explain select product_id from products


explain select first_name from customers where customer_id = 1

select * from purchases

-- before index
explain select * from purchases where customer_id = 1


create index idx_purchases_customer_id on purchases
using hash (customer_id);

-- after
explain select * from purchases where customer_id = 1


-- create table
create table test_index(
	id serial primary key,
	test_int numeric
)

-- insert more records
select * from test_index

INSERT INTO test_index (test_int)
SELECT (random() * 1000)::int
FROM generate_series(1, 500000);

select count(*) from test_index

create index idx_test_index_test_int on test_index
using hash (test_int);

CREATE INDEX idx_test_index_test_int
ON test_index (test_int);

explain select * from test_index -- seq scan


explain select test_int from test_index where test_int > 100

select * from test_index limit 10

ANALYZE test_index;

explain select test_int from test_index where test_int = 100


EXPLAIN ANALYZE
SELECT test_int
FROM test_index
WHERE test_int = 500;




