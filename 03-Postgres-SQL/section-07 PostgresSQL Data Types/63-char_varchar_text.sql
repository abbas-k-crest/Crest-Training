-- CHAR

SELECT CAST('Abbas' AS character(10)) AS "Name";

SELECT 'Abbas'::char(10) AS "Name"

SELECT 
	CAST('Abbas' AS character(10)) AS "Name1",
	'Abbas'::char(10) AS "Name2"
	-- "Abbas     "
	-- "Abbas     "

-- VARCHAR
SELECT 'Abbas'::varchar(10) AS "Name"; -- "Abbas" 

select 'this is a test from the system'::varchar(10)

select '12345678910111'::varchar(5)



-- TEXT

select 'there is no limit in this type of datatype'::text