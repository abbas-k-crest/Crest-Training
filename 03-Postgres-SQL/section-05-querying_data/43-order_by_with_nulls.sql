
UPDATE actors
SET gender = null
where gender = 'M';

SELECT * FROM actors;

SELECT * FROM actors
ORDER BY gender ASC NULLS FIRST;

SELECT * FROM actors
ORDER BY first_name ASC NULLS FIRST;

-- Redo null to M
UPDATE actors
SET gender = 'M'
where gender IS NULL;

-- INSERT A NULL value

INSERT INTO actors(first_name, last_name, gender)
VALUES ('Hey', 'Hello', NULL);