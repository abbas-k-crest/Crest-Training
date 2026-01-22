-- Create curency enum data

create type currency AS ENUM ('INR','USD', 'EUR', 'AED')

-- get enum
select 'USD'::currency

-- Create table
create table stocks(
	id serial primary key,
	currency currency
)



-- insert data
insert into stocks(currency)
Values
	('INR'),
	('EUR'),
	('USD')

-- Retreive
select * from stocks


insert into stocks(currency)
Values
	('YAN')

-- add YAN in enum

alter type currency 
ADD VALUE 'YAN'

-- DROP a type

CREATE type simple AS ENUM ('A', 'B', 'C')


DROP TYPE simple












