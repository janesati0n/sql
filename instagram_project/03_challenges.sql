# IG Challenge 1
# Find 5 oldest users
-- SELECT * FROM users ORDER BY created_at LIMIT 5;

# IG Challenge 2
# What day of the week do most users register on
-- SELECT 
-- 	DAYNAME(created_at) AS day,
--     COUNT(*) AS total_users
-- FROM users
-- GROUP BY day
-- ORDER BY total_users DESC
-- LIMIT 1;

# IG Challenge 3
# Find users who have never posted a photo
-- SELECT username FROM users 
-- LEFT JOIN photos ON user_id = users.id
-- WHERE image_url IS NULL;

# IG Challenge 4
# Find user with most likes on a single photo
-- SELECT 
-- 	users.username,
--     photos.id, 
-- 	photos.image_url,
--     COUNT(*) AS total
-- FROM photos
-- JOIN likes ON likes.photo_id = photos.id
-- JOIN users ON users.id = photos.user_id
-- GROUP BY photos.id
-- ORDER BY total DESC
-- LIMIT 1;


# IG Challenge 5
# How many times does the average user post?
-- SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

# IG Challenge 6
# What are the top 5 most used hashtags
-- SELECT tag_name, COUNT(tag_id) AS count FROM photo_tags
-- JOIN tags ON photo_tags.tag_id = tags.id
-- GROUP BY tag_id
-- ORDER BY count DESC
-- LIMIT 1;

# IG Challenge 7
# 
