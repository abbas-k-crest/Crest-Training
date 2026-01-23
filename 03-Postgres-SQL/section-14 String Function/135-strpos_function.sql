-- strpos


select strpos('World Bank', 'Bank')



select strpos('Hey there this is the strpos function', 'Strpos') -- case sensitive


select first_name, last_name from actors
where 
	strpos(first_name, 'an') > 0;











