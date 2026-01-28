create table t_big(
	id serial, 
	name text
)

insert into t_big(name)
select 'Abbas' FROM generate_series(1, 2000000)


insert into t_big(name)
select 'Harsh' FROM generate_series(1, 2000000)

EXPLAIN select * from t_big where id = 12345

show max_parallel_workers_per_gather


SET max_parallel_workers_per_gather TO 2


SELECT pg_relation_size('t_big') / 8192.0;
-- 21622

select seq_page_cost;

select cpu_tuple_cost;

select cpu_operator_cost 


-- size of the index
select
	pg_size_pretty(pg_indexes_size('t_big'))
-- FRom 0 to 86 MB


-- size of table
select
	pg_size_pretty(pg_total_relation_size('t_big'))
-- 169

EXPLAIN ANALYZE select * from t_big where id = 123456
-- 43455.43 before
-- 8.45 Hude difference in cost with indexing
-- Create Index
CREATE INDEX idx_t_big_id ON t_big (id);


-- size of table
select
	pg_size_pretty(pg_total_relation_size('t_big'))
-- 255


show max_parallel_maintenance_workers


select * from t_big
order by id desc limit 10 
