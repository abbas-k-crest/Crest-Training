-- ALter data type

CREATE type myaddress as (
	city varchar(20),
	country varchar(20)
)
-- alter name
alter type myaddress
RENAME TO my_address

-- change user
alter type my_address
OWNER to abbas

-- Change schema
alter type my_address
SET Schema test1

-- Add new attribute
Alter type test1.my_address
ADD attribute street_address varchar(100)


