SELECT DISTINCT p2.name FROM people AS p, crew AS c, crew AS c2, people AS p2 WHERE p.name = 'Nicole Kidman' AND p.person_id = c.person_id AND c.title_id = c2.title_id AND c2.person_id = p2.person_id AND c2.category = 'actor' ORDER BY p2.name ASC;
