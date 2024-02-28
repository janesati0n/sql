# TV Series Challenge 1
-- SELECT title, rating FROM reviews
-- JOIN series ON reviews.series_id = series.id;

# TV Series Challenge 2
-- SELECT title, AVG(rating) AS average FROM reviews
-- JOIN series ON reviews.series_id = series.id
-- GROUP BY title
-- ORDER BY average;

-- SELECT title, ROUND(AVG(rating), 2) AS avg_rating FROM reviews
-- JOIN series ON reviews.series_id = series.id
-- GROUP BY title
-- ORDER BY avg_rating;

# TV Series Challenge 3
-- SELECT first_name, last_name, rating FROM reviewers
-- JOIN reviews ON reviewers.id = reviews.reviewer_id;

# TV Series Challenge 4
-- SELECT title AS unreviewed_series FROM series
-- LEFT JOIN reviews ON series.id = reviews.series_id
-- WHERE rating IS NULL;

-- SELECT title AS unreviewed_series FROM reviews
-- RIGHT JOIN series ON reviews.series_id = series.id 
-- WHERE rating IS NULL;
  
# TV Series Challenge 5
-- SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series
-- JOIN reviews ON series.id = reviews.series_id
-- GROUP BY genre;

# TV Series Challenge 6
-- SELECT 
-- 	first_name, 
--     last_name, 
-- 	COUNT(rating) AS COUNT, 
-- 	IFNULL(MIN(rating), 0) AS MIN, 
-- 	IFNULL(MAX(rating), 0) AS MAX, 
-- 	ROUND(IFNULL(AVG(rating), 0), 2) AS AVG, 
-- 	CASE
-- 		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
-- 		ELSE 'INACTIVE'
--     END AS STATUS
-- FROM reviewers 
-- LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name, last_name;

-- SELECT 
-- 	first_name, 
--     last_name, 
-- 	COUNT(rating) AS COUNT, 
-- 	IFNULL(MIN(rating), 0) AS MIN, 
-- 	IFNULL(MAX(rating), 0) AS MAX, 
-- 	ROUND(IFNULL(AVG(rating), 0), 2) AS AVG, 
-- 	IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
-- FROM reviewers 
-- LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name, last_name;
