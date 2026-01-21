-- Implicit to explicit

select factorial(20);

select factorial(20) AS "result";

select factorial(cast (20 AS bigint)) AS "result";

select round(10, 4)


select ROUND (cast (10 AS NUMERIC), 4) AS "result";

select substr('112345', 2)

