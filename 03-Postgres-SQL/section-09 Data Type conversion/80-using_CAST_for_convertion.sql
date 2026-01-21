-- using CAST keywod for data convertion

select
	CAST ('10' AS integer)

select 
	CAST ('10n' AS integer)


select 
	 CAST ('2020-01-01' AS DATE),
	 CAST('20-June-2021' AS DATE)


select
	CAST('yes' AS boolean),
	CAST('true' AS boolean),
	CAST('TRUE' AS boolean)



-- expression type

select
	'10' :: integer,
	'2020-05-05' :: DATE


select
	'31-01-2020'::DATE,
	'01-01-01'::DATE


select 
	'10 hours':: interval,
	'10 minutes':: interval
	












	


