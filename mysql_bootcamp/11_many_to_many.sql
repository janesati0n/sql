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
