SELECT * FROM public.t_big_random limit 20

explain (analyze true, buffers true, timing true)
select * from t_big where id < 10000;


vacuum analyze t_big_random