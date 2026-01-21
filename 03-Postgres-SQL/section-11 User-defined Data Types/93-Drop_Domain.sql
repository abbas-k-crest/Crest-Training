-- DROP delete the domain


DROP DOMAIN positive_num CASCADE

select * from sample


-- DROP `valid_color` domain used in `colors` table `color` column
DROP DOMAIN valid_color

-- change the colors table color column data type
select * from colors

ALTER table colors
alter column color type varchar(10)


DROP DOMAIN valid_color
