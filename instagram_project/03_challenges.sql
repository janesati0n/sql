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
#
