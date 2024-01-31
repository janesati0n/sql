# First steps
-- SHOW DATABASES;
-- CREATE DATABASE training;
-- USE training;
-- DROP DATABASE training

# Create table
-- CREATE TABLE Tweets (
-- Username VARCHAR(15),
-- Content VARCHAR(140),
-- Favorites INT
--  );

# How do we know it worked?
-- SHOW TABLES;
-- SHOW COLUMNS FROM tweets;
-- DESC tweets; 

# Deleting Tables
-- DROP TABLE cats;

# Inserting into table
-- INSERT INTO cats (name, age) 
-- VALUES ('Blue Steele', 5);

-- INSERT INTO cats (name, age) VALUES ('Jenkins', 7);
-- SELECT * FROM cats;
    
# Multi-inserts
-- INSERT INTO tweets (Username, Content, Favorites) 
-- VALUES 
-- 	('coolguy', 'my first tweet!', 1),
-- 	('guitar_queen', 'I love music :)', 10),
-- 	('lonely_hart', 'still looking 4 love', 0);

# Not Null
-- CREATE TABLE cats2 (
-- name VARCHAR(100) NOT NULL,
-- age INT NOT NULL
-- );

# Default values
-- CREATE TABLE cats3 (
-- name VARCHAR(100) DEFAULT 'unnamed',
-- age INT DEFAULT 99
-- );

# THIS IS NOT REDUNDANT
-- CREATE TABLE cats4 (
-- name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
-- age INT NOT NULL DEFAULT 99
-- );

-- INSERT INTO cats3(name, age) VALUES (NULL, NULL);	//does work
-- INSERT INTO cats4(name, age) VALUES (NULL, NULL);	//cannot be null

# Primary key
-- CREATE TABLE unique_cats (
-- cat_id INT AUTO_INCREMENT PRIMARY KEY,
-- name VARCHAR(100) NOT NULL,
-- age INT NOT NULL
-- );

-- CREATE TABLE unique_cats (
-- cat_id INT AUTO_INCREMENT,
-- name VARCHAR(100) NOT NULL,
-- age INT NOT NULL,
-- PRIMARY KEY(cat_id)
-- );
