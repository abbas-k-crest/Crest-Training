-- alias to expression

SELECT first_name, last_name from actors;

-- Concatenate first last anmer

SELECT first_name || last_name from actors;

SELECT first_name || ' ' || last_name from actors;

-- Change column name
SELECT 
	first_name || last_name AS "Full Name" 
from actors;

-- Only use expression

SELECT 10 * 2;

SELECT 12 / 3;

