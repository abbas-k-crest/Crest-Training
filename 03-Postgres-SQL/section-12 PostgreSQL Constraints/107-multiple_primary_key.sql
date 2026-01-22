
-- Primary key constraints on multiple columns
create table t_grades(
	course_id varchar(100) not null, 
	student_id varchar(100) not null,
	grade int not null,
	primary key (course_id, student_id)
);

select * from t_grades;

insert into t_grades(course_id, student_id, grade) 
values 
('Math','S',70),
('Chemistry','S',70),
('English','S',80),
('Physics','S',80);

drop table t_grades;

-- drop a primary key
alter table t_grades
drop constraint t_grades_pkey;

SELECT conname, contype
FROM pg_constraint
WHERE conrelid = 't_grades'::regclass;

alter table t_grades 
	add constraint t_grades_course_id_session_id_pkey
		primary key(course_id, student_id);

-- Tables without foreign key constraints
drop table table_products;

create table t_products(
	product_id int primary key,
	products_name varchar(100) not null,
	supplier_id int not null 
);

create table t_suppliers(
	supplier_id int primary key,
	supplier_name varchar(100) not null
)

insert into t_suppliers(supplier_id,supplier_name) values
(1, 'supplier 1'),
(2, 'supplier 2');

select * from t_suppliers

insert into t_products(product_id,products_name, supplier_id) values
(4, 'computer', 10);


select * from t_products;
