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
