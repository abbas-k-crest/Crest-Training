-- Execution plans depend on input values

CREATE index idx_t_big_name on t_big (name)



EXplain SELECT * from t_big
where name = 'Harsh' limit 10

explain select * from t_big
where name IN ('Abbas1', 'Harsh')


explain (analyze true, buffers true, timing true)
select * from t_big where id < 10000;
-- ordered values cost: 348.35
-- unordered values cost: 


select * from products order by random()

-- Create unordered table
create table t_big_random AS select * from t_big order by random();

create index idx_t_big_random_id on t_big_random (id)


explain select * from public.t_big random limit 20;

explain (analyze true, buffers true, timing true)
select * from t_big where id < 10000;




