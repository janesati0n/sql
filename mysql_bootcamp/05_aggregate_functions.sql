# COUNT
-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(author_fname) FROM books;
-- SELECT COUNT(DISTINCT author_fname) FROM books;
-- SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

# GROUP BY
-- SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

# MIN and MAX
-- SELECT MIN(released_year) FROM books;
-- SELECT MAX(pages) FROM books;
-- SELECT MIN(author_lname), MAX(author_lname) FROM books;

# Subqueries
-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- SELECT title, released_year FROM books 
-- WHERE released_year = (SELECT MIN(released_year) FROM books);

# Grouping by Multiple Columns
-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books GROUP BY author;

# Min/Max with Group By
-- SELECT 
-- 	author_fname, 
-- 	author_lname, 
-- 	COUNT(*) AS books_written, 
-- 	MIN(released_year) AS earliest_release, 
-- 	MAX(released_year) AS latest_release, 
--     MAX(pages) AS longest_book
-- FROM books GROUP BY author_lname, author_fname;

# SUM
-- SELECT author_lname, SUM(pages) FROM books GROUP BY author_lname;

# AVG
-- SELECT 
-- 	released_year, 
-- 	AVG(stock_quantity), 
-- 	COUNT(*) 
-- FROM books GROUP BY released_year;

# Excercise
-- SELECT COUNT(*) FROM books;
-- SELECT released_year, COUNT(released_year) FROM books GROUP BY released_year;
-- SELECT SUM(stock_quantity) FROM books;
-- SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;
-- SELECT author_fname, author_lname, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
-- SELECT 
-- 	released_year AS 'year', 
-- 	COUNT(released_year) AS '\# books', 
-- 	AVG(pages) 
-- FROM books GROUP BY year ORDER BY year;
