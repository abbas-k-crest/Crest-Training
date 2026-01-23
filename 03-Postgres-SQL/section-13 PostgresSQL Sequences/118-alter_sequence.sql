-- Restart the sequence

select nextval('test_seq')

select currval('test_seq')


ALTER sequence test_seq  Restart with 100

alter sequence test_seq rename to my_seq


select currval('my_seq')