# UNIQUE
-- CREATE TABLE companies (
-- 	supplier_id INT AUTO_INCREMENT,
-- 	name VARCHAR(255) NOT NULL,
-- 	phone VARCHAR(15) NOT NULL UNIQUE,
-- 	address VARCHAR(255) NOT NULL,
-- 	PRIMARY KEY (supplier_id)
-- );

-- CREATE TABLE contacts (
-- 	name VARCHAR(100) NOT NULL,
-- 	phone VARCHAR(15) NOT NULL UNIQUE
-- );

-- INSERT INTO contacts (name, phone) VALUES ('billybob', '8781213455');
-- INSERT INTO contacts (name, phone) VALUES ('timmytimtim', '8781213455');	//Error

# CHECK
-- CREATE TABLE partiers (
-- 	name VARCHAR(50),
-- 	age INT CHECK (age > 18)
-- );

-- CREATE TABLE users (
-- 	username VARCHAR(20) NOT NULL,
-- 	age INT CHECK (age > 0)
-- );

-- INSERT INTO users (username, age) VALUES ('bluethecat', 50);
-- INSERT INTO users (username, age) VALUES ('coltsteele', -3);	//Error

-- CREATE TABLE palindromes (
-- 	word VARCHAR(100) CHECK(REVERSE(word) = word)
-- );

-- INSERT INTO palindromes (word) VALUES ('racecar');
-- INSERT INTO palindromes (word) VALUES ('mommy'); 	//Error

# Named Constraints
