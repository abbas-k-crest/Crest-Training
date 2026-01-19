--  Using expression

SELECT 
	first_name,
	LENGTH(first_name)
FROM 
	actors;

SELECT 
	first_name,
	LENGTH(first_name) AS "len"
FROM 
	actors;


SELECT 
	first_name,
	LENGTH(first_name) AS len
FROM 
	actors
ORDER BY
	len;



	