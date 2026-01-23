-- create sequence

CREATE SEQUENCE IF NOT EXISTS test_seq


select nextval('test_seq')

select currval('test_seq')

select setval('test_seq', 100)

-- assign value and see the current value

select setval('test_seq', 200, false)

-- start with specific value

CREATE SEquence If not exists test_seq1 start with 100

select nextval('test_seq1')

select currval('test_seq1')