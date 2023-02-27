SELECT p.name, DATE('now') - p.born from people AS p WHERE born >= 1900 AND died IS NULL ORDER BY born ASC LIMIT 20;
