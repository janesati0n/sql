# Update book collection
-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

# DISTINCT
-- SELECT DISTINCT author_lname FROM books;
-- SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
-- SELECT DISTINCT author_fname, author_lname FROM books;

# ORDER BY
-- SELECT * FROM books ORDER BY author_lname;
-- SELECT * FROM books ORDER BY author_lname DESC;
-- SELECT * FROM books ORDER BY released_year;

-- SELECT title, author_fname, author_lname FROM books ORDER BY 2;
-- SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 4 DESC;

-- SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
-- SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year DESC;

-- SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author;

# LIMIT
-- SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 10;
-- SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 0,10;
-- SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 3,2;

# LIKE
-- SELECT title, author_fname, author_lname FROM books WHERE author_fname='David';
-- SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';
-- SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '_a_';
-- SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%n';

# Escaping Wildcards
-- SELECT title, author_fname, author_lname FROM books WHERE title like '%\%%';
-- SELECT title, author_fname, author_lname FROM books WHERE title like '%\_%';

# Excercise
-- SELECT title FROM books WHERE title like '%stories%';
