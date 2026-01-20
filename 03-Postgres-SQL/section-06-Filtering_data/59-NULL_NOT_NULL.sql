select * from movies
where add_date is null


select * from movies
where add_date is not null

select * from actors
where date_of_birth is null


select * from actors 
where
	first_name is null
	or 
	date_of_birth is null


select * from movies_revenues
where revenues_domestic is null


select * from movies_revenues
where revenues_domestic is null
or revenues_international is null




