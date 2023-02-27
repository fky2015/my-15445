SELECT t.primary_title, t.premiered, runtime_minutes || ' (mins)' FROM titles AS t WHERE t.genres = 'Sci-Fi' ORDER BY t.runtime_minutes DESC LIMIT 10;
