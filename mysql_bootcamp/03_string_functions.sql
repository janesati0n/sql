-- CREATE DATABASE book_shop;
-- USE book_shop;
-- source 03_book_data.sql

# CONCAT
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books;
-- SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;

# SUBSTRING
-- SELECT SUBSTRING('Hello World', 1, 5);
-- SELECT SUBSTRING('Hello World', 7);
-- SELECT SUBSTRING('Hello World', -3);
-- SELECT SUBSTRING('Hello World', -3, 1);

-- SELECT SUBSTRING(title, 1, 15) AS 'short title' FROM books;
-- SELECT SUBSTR(author_lname, 1, 1) AS initial, author_lname FROM books;

# Combining String Functions
-- SELECT CONCAT
-- 	(
-- 		SUBSTR(title, 1, 10),
-- 		'...'
-- 	) AS 'short title'
-- FROM books;

-- SELECT CONCAT
-- 	(
-- 		SUBSTR(author_fname, 1, 1),
-- 		'.',
-- 		SUBSTR(author_lname, 1, 1),
-- 		'.'
-- 	) AS 'author_initials'
-- FROM books;

# REPLACE
-- SELECT REPLACE('Hello World', 'Hell', '%$#@');
-- SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
-- SELECT REPLACE(title, ' ', '-') FROM books;

# REVERSE
