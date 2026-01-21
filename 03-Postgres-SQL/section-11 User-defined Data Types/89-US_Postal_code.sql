

CREATE DOMAIN us_postal_code AS TEXT
check(
	VALUE ~'^\d{5}$'
	OR VALUE ~'^\D{5}-\d{4}$'
)

create table addresses(
	id serial primary key,
	postal us_postal_code
)


insert into addresses(postal)
VAlues ('10000')


insert into addresses(postal)
VAlues ('10000-10000')