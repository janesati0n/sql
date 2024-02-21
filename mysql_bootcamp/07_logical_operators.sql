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
