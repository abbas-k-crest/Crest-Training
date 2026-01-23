-- descending order sequence


create sequence if not exists seq_rev
increment -1


select nextval('seq_rev')


-- Sequemce with cycle
create sequence seq4
increment 2
minvalue 1
maxvalue 10
cycle

select nextval('seq4')


-- with no cycle
create sequence seq5
increment 5
minvalue 1
maxvalue 20
no cycle

select nextval('seq5')


