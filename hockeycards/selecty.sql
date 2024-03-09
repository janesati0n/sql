-- SELECT * FROM abilities;

-- SELECT 
-- 	CONCAT(team_city, ' ', team_name) as team,
-- 	division_name,
-- 	conference_name
-- FROM divisions
-- JOIN conferences ON divisions.conference_id = conferences.id
-- JOIN teams ON teams.division_id = divisions.id
-- ORDER BY teams.id;
