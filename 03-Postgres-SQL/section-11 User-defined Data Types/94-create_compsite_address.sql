-- Create TYPE


CREATE TYPE address AS (
	city varchar(20),
	country varchar(20)
)


-- Create A Table

create table companies (
	id serial primary key,
	address address
)

-- Add Data
Insert into companies(address)
Values
	(ROW ('Ahmedabad', 'India')),
	(ROW ('Mumbai', 'India')),
	(ROW ('Kolkata', 'India'))

-- Retreive Data
Select * from companies


-- Specific column in address
select 
	(address).city,
	(address).country
from companies


Select * from companies
Where (address).country = 'India'

