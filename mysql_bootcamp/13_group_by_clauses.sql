# HAVING clause
-- SELECT 
-- 	title, 
-- 	AVG(rating) AS average,
--     COUNT(rating) AS review_count
-- FROM full_reviews 
-- GROUP BY title HAVING COUNT(rating) > 1;

# WITH ROLLUP
-- SELECT AVG(rating) FROM full_reviews;
-- SELECT title, AVG(rating) FROM full_reviews GROUP BY title;
-- SELECT title, AVG(rating) FROM full_reviews GROUP BY title WITH ROLLUP;		//last row
-- SELECT title, COUNT(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

-- SELECT released_year, genre, AVG(rating) FROM full_reviews GROUP BY released_year, genre;
-- SELECT released_year, genre, AVG(rating) FROM full_reviews GROUP BY released_year, genre WITH ROLLUP;
