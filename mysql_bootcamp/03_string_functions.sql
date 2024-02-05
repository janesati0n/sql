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
-- SELECT REVERSE('Hello World!');
-- SELECT REVERSE(NULL);
-- SELECT REVERSE(author_fname) FROM books;
-- SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

# CHAR_LENGTH
-- SELECT CHAR_LENGTH('海豚');	-- pocet znakov
-- SELECT LENGTH('海豚');		-- velkost v byte
-- SELECT CHAR_LENGTH(title) AS length, title FROM books;
-- SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

# UPPER and LOWER
-- SELECT UPPER('Hello');
-- SELECT UCASE('Hello');
-- SELECT LOWER('Hello');
-- SELECT LCASE('Hello');
-- SELECT CONCAT('I LOVE ', UPPER(title), ' !!!') FROM books;

# Other String Functions
-- SELECT INSERT('Hello Bobby', 6, 0, ' There');

-- SELECT LEFT('omghahalol!', 3);
-- SELECT RIGHT('omghahalol!', 4);
-- SELECT LEFT(author_lname, 1) AS first_initial FROM books;

-- SELECT REPEAT('ha', 4);

-- SELECT TRIM('    san antonio   ');
-- SELECT TRIM(LEADING '.' FROM '.....san antonio...');
-- SELECT TRIM(TRAILING '.' FROM '.....san antonio...');
-- SELECT TRIM(BOTH '.' FROM '.....san antonio...');

# Excercise
-- SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
-- SELECT REPLACE(title, ' ', '->') AS title from books;
-- SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;
-- SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;
-- SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;
-- SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- SELECT 
-- 	CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title', 
-- 	CONCAT(author_lname, ',', author_fname) AS author, 
-- 	CONCAT(stock_quantity, ' in stock') AS quantity 
-- FROM books;
