-- DROP DATABASE hockeycards;
-- CREATE DATABASE hockeycards;
-- USE hockeycards;

-- CREATE TABLE abilities (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
-- 	ability_name VARCHAR(40) UNIQUE NOT NULL
-- );

-- CREATE TABLE conferences (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
-- 	conference_name VARCHAR(24) UNIQUE NOT NULL
-- );

-- CREATE TABLE divisions (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
-- 	division_name VARCHAR(24) UNIQUE NOT NULL,
-- 	conference_id INT NOT NULL,
-- 	FOREIGN KEY (conference_id) REFERENCES conferences(id)
-- );

-- CREATE TABLE teams (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
-- 	team_abbr VARCHAR(3) UNIQUE NOT NULL, 
-- 	team_city VARCHAR(20) NOT NULL,
-- 	team_name VARCHAR(20) NOT NULL,
-- 	division_id INT NOT NULL,
-- 	conference_id INT NOT NULL,
-- 	FOREIGN KEY (division_id) REFERENCES divisions(id),
-- 	FOREIGN KEY (conference_id) REFERENCES conferences(id)
-- );
