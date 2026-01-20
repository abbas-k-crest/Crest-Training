-- Concatenate

select 'hello' || 'world'

select 'hello' || ' ' || 'world'

SELECT CONCAT(first_name, ' ', last_name) AS "Actor Name" from actors
order by first_name


Select CONCAT_WS(', ', first_name, last_name) from actors

