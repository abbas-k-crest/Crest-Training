-- multiple indexes ON a single query

EXPLAIN select * from t_big
where id = 20 or id = 30

explain select * from t_big
where id IN (1, 40, 444, 456789)