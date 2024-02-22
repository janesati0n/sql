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
-- CREATE TABLE partiers2 (
-- 	name VARCHAR(50),
-- 	age INT,
-- 	CONSTRAINT age_over_18 CHECK (age > 18)
-- );

-- CREATE TABLE users2 (
-- 	username VARCHAR(20) NOT NULL,
-- 	age INT,
-- 	CONSTRAINT age_not_negative CHECK (age > 0)
-- );

-- INSERT INTO user2 (username, age) VALUES ('chickenlady', -9);	//Error

-- CREATE TABLE palindromes2 (
-- 	word VARCHAR(100),
-- 	CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
-- );

-- INSERT INTO palindromes2 VALUES ('mom');
-- INSERT INTO palindromes2 VALUES ('momma');	//Error

# Multiple Column Constraints
-- CREATE TABLE companies2 (
-- 	name VARCHAR(255) NOT NULL,
-- 	address VARCHAR(255) NOT NULL,
-- 	CONSTRAINT name_address UNIQUE (name, address)
-- );

-- INSERT INTO companies2 (name, address) VALUES ('blackbird auto', '123 spruce');
-- INSERT INTO companies2 (name, address) VALUES ('luigis pies', '123 spruce');
-- INSERT INTO companies2 (name, address) VALUES ('luigis pies', '123 spruce');	/Error

-- CREATE TABLE houses (
-- 	purchase_price INT NOT NULL,
-- 	sale_price INT NOT NULL,
-- 	CONSTRAINT sale_gt_purchase CHECK(sale_price >= purchase_price)
-- );

-- INSERT INTO houses (purchase_price, sale_price) VALUES (100, 200);
-- INSERT INTO houses (purchase_price, sale_price) VALUES (300, 250);	//Error
