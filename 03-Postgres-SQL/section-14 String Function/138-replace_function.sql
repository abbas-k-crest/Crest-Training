-- replace function

-- replace (string, from_substring, to_string)


select replace('Hello is the is what', 'is', 'changed')


select replace('What a wonderful world', 'a', 'an')


select * from test

select
	replace(test_id::text, test_id::text, 'test'||test_id::text)
from test
