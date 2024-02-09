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
-- SMALLINT UNSIGNED <0 ... 65535>		2 bytes
-- MEDIUMINT UNSIGNED <0 ... 16777215>	3 bytes
-- INT UNSIGNED <0 ... 4294967295>	4 bytes
-- BIGINT UNSIGNED <0 ... 2^64-1>		8 bytes

# DECIMAL
