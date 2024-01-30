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
INSERT INTO tweets (Username, Content, Favorites) 
VALUES ('coolguy', 'my first tweet!', 1),
	   ('guitar_queen', 'I love music :)', 10),
	   ('lonely_hart', 'still looking 4 love', 0);
