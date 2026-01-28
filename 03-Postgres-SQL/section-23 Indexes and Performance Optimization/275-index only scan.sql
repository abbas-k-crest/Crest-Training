-- using index only scan

explain analyze select * from t_big where id = 123456;
-- .344
-- .092

explain analyze select id from t_big where id = 123456;
-- 0.244
-- 0.437