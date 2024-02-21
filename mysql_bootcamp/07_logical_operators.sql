# Not Equal
-- SELECT * FROM books WHERE released_year != 2017;
-- SELECT title, author_lname FROM books WHERE author_lname != 'Gaiman';

# NOT LIKE
-- SELECT title FROM books WHERE title NOT LIKE '%e%';

# Greater Than
-- SELECT * FROM books WHERE released_year > 2000;

# Less Than or Equal To
-- SELECT title, released_year FROM books WHERE released_year < 2000;
-- SELECT title, released_year FROM books WHERE released_year >= 2010;
-- SELECT title, released_year FROM books WHERE released_year <= 1985;

# Logical AND
-- SELECT * FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
-- SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;
-- SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';
-- SELECT title, pages FROM books WHERE CHAR_LENGTH(title) > 30 AND pages > 500;

# Logical OR
-- SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' OR released_year > 2010;
-- SELECT title, pages FROM books WHERE pages < 200 OR title LIKE '%stories';

# BETWEEN
-- SELECT title, released_year FROM books WHERE released_year >= 2004 AND released_year <= 2015;
-- SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;

-- SELECT title, pages FROM books WHERE pages BETWEEN 200 AND 300;
-- SELECT title, pages FROM books WHERE pages NOT BETWEEN 200 AND 300;

# Comparing Dates
-- SELECT * FROM people WHERE birthdate < '2005-01-01';
-- SELECT * FROM people WHERE YEAR(birthdate) < 2005;

-- SELECT * FROM people WHERE HOUR(birthtime) > 12;
-- SELECT * FROM people WHERE birthtime BETWEEN '12:00:00' AND '16:00:00';

-- SELECT * FROM people WHERE birthtime 
-- 	BETWEEN CAST('12:00:00' AS TIME) 
-- 	AND CAST('16:00:00' AS TIME);

-- SELECT * FROM people WHERE HOUR(birthtime) BETWEEN 12 AND 16;

