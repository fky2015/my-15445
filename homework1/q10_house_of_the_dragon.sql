WITH RECURSIVE func (title, offset) AS (
  SELECT title, 1 FROM res WHERE offset = 1 
  UNION ALL
  SELECT f.title ||', ' || res.title, f.offset + 1
    FROM res, func as f
    WHERE f.offset < (SELECT COUNT(*) from res)
    AND f.offset + 1 = res.offset
), res AS (
  SELECT DISTINCT a.title as title , DENSE_RANK() OVER (ORDER BY a.title ASC) AS offset
  FROM titles AS t, akas AS a
  WHERE primary_title = 'House of the Dragon' AND t.title_id = a.title_id AND t.type = 'tvSeries'
  ORDER BY a.title ASC
)
SELECT title FROM func WHERE offset = (SELECT COUNT(*) from res);
