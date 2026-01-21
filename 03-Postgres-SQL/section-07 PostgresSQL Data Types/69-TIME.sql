-- TIME Data type

CREATE TABLE table_time(
	id serial primary key,
	class_name varchar(100) NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);


SELECT * FROM table_time

INSERT INTO table_time(class_name, start_time, end_time)
VALUES
	('AI/ML', '10:30:00', '11:45:00')\


SELECT CURRENT_TIME
SELECT CURRENT_TIME(4)

SELECT LOCALTIME

SELECT CURRENT_TIME, LOCALTIME


SELECT TIME '10:30' - TIME '11:30'

SELECT TIME '12:00' - TIME '11:30'


SELECT 
	CURRENT_TIME,
	CURRENT_TIME + interval '2 hours'
