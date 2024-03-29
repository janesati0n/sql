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

# The IN Operator
-- SELECT title, author_lname FROM books 
-- 	WHERE author_lname = 'Carver' 
-- 	OR author_lname = 'Lahiri'
-- 	OR author_lname = 'Smith';
    
-- SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
-- SELECT title, author_lname FROM books WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- SELECT title, released_year FROM books 
-- 	WHERE released_year >= 2000
-- 	AND released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);

-- SELECT title, released_year FROM books 
-- 	WHERE released_year >= 2000
-- 	AND released_year % 2 = 1;

# CASE
-- SELECT title, released_year, 
-- 	CASE
-- 		WHEN released_year >= 2000 THEN 'Modern Lit'
-- 		ELSE '20th Century Lit'
-- 	END AS genre
-- FROM books;

-- SELECT title, stock_quantity,
-- 	CASE
-- 		WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
-- 		WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
-- 		ELSE '***'
-- 	END AS stock
-- FROM books;

-- SELECT title, stock_quantity,
-- 	CASE
-- 		WHEN stock_quantity <= 40 THEN '*'
-- 		WHEN stock_quantity <= 70 THEN '**'
-- 		WHEN stock_quantity <= 10 THEN '***'
-- 		WHEN stock_quantity <= 140 THEN '****'
-- 		ELSE '*****'
-- 	END AS stock
-- FROM books;

# IS NULL
-- SELECT * FROM books WHERE author_lname IS NULL;
-- SELECT * FROM books WHERE author_lname IS NOT NULL;

# Excercise
-- SELECT * FROM books WHERE released_year < 1980;
-- SELECT * FROM books WHERE author_lname IN ('Eggers', 'Chabon');
-- SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
-- SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';
-- SELECT title, author_lname FROM books WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');

-- SELECT title, author_lname,
-- 	CASE
-- 		WHEN title LIKE '%stories%' THEN 'Short Stories'
-- 		WHEN title = 'Just Kids' THEN 'Memoir'
-- 		WHEN title LIKE 'A Heartbreaking Work %' THEN 'Memoir'
-- 		ELSE 'Novel'
-- 	END AS type
-- FROM books;

-- SELECT author_fname, author_lname, 
-- 	CASE
-- 		WHEN COUNT(*) = 1 THEN '1 book'
-- 		ELSE CONCAT(COUNT(*), ' books')
-- 	END AS count
-- FROM books 
-- 	GROUP BY author_fname, author_lname;
