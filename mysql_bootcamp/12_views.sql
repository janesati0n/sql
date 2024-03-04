# Introduction
-- CREATE VIEW full_reviews AS 
-- SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
-- JOIN series ON series.id = reviews.series_id
-- JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- SELECT * FROM full_reviews WHERE genre = 'Animation';
-- SELECT genre, AVG(rating) FROM full_reviews GROUP BY genre;

# Updateable Views
-- CREATE VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year;

-- INSERT INTO ordered_series (title, released_year, genre)
-- VALUES ('The Great', 2020, 'Comedy');

-- DELETE FROM ordered_series WHERE title = 'The Great';

# Replacing/Altering Views
