# CHAR vs. VARCHAR
-- CREATE TABLE names (abbr VARCHAR(10));
-- INSERT INTO names (abbr) VALUES ('jon'), ('juan pablo'), ('james');

-- CREATE TABLE states (abbr CHAR(2));
-- INSERT INTO states (abbr) VALUES ('CA'), ('NY');		//faster for fixed length text

# INT, TINYINT, BIGINT
-- TINYINT <-128 ... 127>		1 byte
-- SMALLINT <-32768 ... 32767>		2 bytes
-- MEDIUMINT <-8388608 ... 8388607>	3 bytes
-- INT <-2147483648 ... 2147483647>	4 bytes
-- BIGINT <-2^63 ... 2^63-1>		8 bytes

-- TINYINT UNSIGNED <0 ... 255>		1 byte
-- SMALLINT UNSIGNED <0 ... 65535>	2 bytes
-- MEDIUMINT UNSIGNED <0 ... 16777215>	3 bytes
-- INT UNSIGNED <0 ... 4294967295>	4 bytes
-- BIGINT UNSIGNED <0 ... 2^64-1>	8 bytes

# DECIMAL
-- DECIMAL(5,2) //(total num of digits, digits after decimal) = 999.99

# FLOAT and DOUBLE
-- DECIMAL (most precise, most storage)
-- FLOAT (cca 7digits, 4bytes)
-- DOUBLE (cca 15 digits, 8bytes)

# DATE and TIME
-- DATE (YYYY-MM-DD)
-- TIME (HH:MM:SS)
-- DATETIME (YYYY-MM-DD HH:MM:SS)

# Excercise
-- CREATE TABLE people(
-- 	name VARCHAR(100),
--     birthdate DATE,
--     birthtime TIME,
--     birthdt DATETIME
-- );

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES 
-- 	('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00'),
-- 	('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10'),
-- 	('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');


# CURDATE, CURTIME and NOW
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- 	VALUES ('Hazel', CURDATE(), CURTIME(), NOW());
