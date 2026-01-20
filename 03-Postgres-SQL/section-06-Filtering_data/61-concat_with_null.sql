


select 
'hello' || NULL


select 
	revenues_domestic,
	revenues_international,
	CONCAT_WS(', ', revenues_domestic, revenues_international) as revenue 
from movies_revenues






