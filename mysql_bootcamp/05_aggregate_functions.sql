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
