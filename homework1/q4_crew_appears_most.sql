 SELECT p.name , count(*) AS n FROM people AS p LEFT JOIN crew AS c WHERE p.person_id = c.person_id GROUP BY p.person_id ORDER BY n DESC LIMIT 10;
