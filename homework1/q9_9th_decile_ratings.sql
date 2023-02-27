WITH t AS (
  SELECT p.name, ROUND(AVG(r.rating),2) as rank, (NTILE(10) OVER (ORDER BY AVG(r.rating))) AS decile
  FROM people AS p, crew AS c, ratings AS r , titles as t
  WHERE p.born = 1955 AND p.person_id = c.person_id AND c.title_id = r.title_id AND t.title_id = r.title_id AND t.type = 'movie'
  GROUP BY p.name
  ORDER BY rank DESC, p.name ASC
)
SELECT name, rank FROM t WHERE decile = 9;
