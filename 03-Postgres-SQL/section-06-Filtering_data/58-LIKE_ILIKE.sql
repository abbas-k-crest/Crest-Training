--  LIKE ILIKE operator

SELECT
	'hello' LIKE 'hello';

-- Partial character search

SELECT 'hello' LIKE 'h%';

SELECT 'hello' LIKE 'e%'; -- false

SELECT 'hello' LIKE '%e%'; -- true

SELECT 'hello' LIKE '__ll_'

SELECT 'hello' LIKE '%ll'

-- All actors name starting with a
select first_name from actors
where first_name LIKE 'A%'


--  Last character end with a
select * from actors
where first_name LIKE '%a'


-- first name with 5 character only

select * from actors
where first_name LIKE '_____'


select * from actors
where first_name LIKE '_l%'


select * from actors
where first_name like '%tim%'


select * from actors
where first_name ilike '%tim%'











