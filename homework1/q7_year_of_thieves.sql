SELECT COUNT(DISTINCT t.title_id) FROM titles AS t WHERE t.premiered = (SELECT premiered FROM titles WHERE primary_title = 'Army of Thieves' LIMIT 1);
