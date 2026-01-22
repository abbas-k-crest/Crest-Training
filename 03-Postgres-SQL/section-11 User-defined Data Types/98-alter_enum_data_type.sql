-- Alter an enum data type


create type  colors  as enum ('Red', 'green', 'blue')


-- add new color
alter type colors Add value 'Orange'

-- update a value
alter type colors
Rename value 'Red' to 'Purple'

-- List all enums type
select enum_range(null::colors)

-- Add red befor green
alter type colors
ADD Value 'red' before 'green'

















