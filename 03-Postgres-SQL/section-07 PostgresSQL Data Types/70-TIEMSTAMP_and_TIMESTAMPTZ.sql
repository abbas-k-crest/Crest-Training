-- TIMESTAMP - stores without timezone
-- TIEMSTAMPTZ - stores with timezone

CREATE TABLE table_time_tz(
	id serial primary key,
	ts TIMESTAMP,
	tstz TIMESTAMPTZ
);

INSERT INTO table_time_tz(ts, tstz)
VALUES 
	('2026-01-01 10:30:10-07', '2026-01-01 10:30:10-07')

INSERT INTO table_time_tz(ts, tstz)
VALUES 
	('2026-01-01 10:30:10', '2026-01-01 10:30:10')

SELECT * FROM table_time_tz

SHOW TIMEZONE

SELECT CURRENT_TIMESTAMP -- 2026-01-21 10:11:21.743459+05:30

SELECT TIMEOFDAY()