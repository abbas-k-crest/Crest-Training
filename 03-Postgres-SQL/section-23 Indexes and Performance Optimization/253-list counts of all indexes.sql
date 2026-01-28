-- list counts for all indexes


select *
from pg_stat_all_indexes

select *
from pg_stat_all_indexes
where schemaname = 'public'
order by relname


select *
from pg_stat_all_indexes
where schemaname = 'public' AND relname = 'products'
order by indexrelname
