-- Create with start minval, max, val increment


create sequence if not exists seq1
increment 10
minvalue 200
maxvalue 5000
start with 250


select nextval('seq1')







