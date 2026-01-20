SELECT * FROM actors;

SELECT 
	first_name, 
	last_name as surname
FROM actors;


-- Alias with where clause
SELECT 
	first_name, 
	last_name as surname
FROM actors
WHERE
	last_name = 'Bracco';


-- Alias with where clause
SELECT 
	first_name, 
	last_name as surname
FROM actors
WHERE
	surname = 'Bracco'; -- cannot use alias for where clause