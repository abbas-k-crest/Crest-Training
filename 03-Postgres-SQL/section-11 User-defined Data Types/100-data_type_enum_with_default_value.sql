-- Create default enum value


Create type cron_job as ENUM ('pending', 'approved', 'declined')

-- Create table with default value

create table tasks(
	id serial primary key,
	job_status cron_job default 'pending'
)


alter table tasks
Add COLUMN task_name varchar(100)


insert into tasks(task_name)
values ('task_1')


select * from tasks


insert into tasks(task_name, job_status)
values ('task_1', 'approved')


select * from tasks


















