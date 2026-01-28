-- List all idexes


SELECT * 
from pg_indexes

Select * from pg_indexes
where schemaname = 'public'
ORDER BY tablename, indexname