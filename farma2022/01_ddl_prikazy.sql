--1 CREATE
-- CREATE TABLE person(
--    id INT PRIMARY KEY,	--id je jedinecne
--    name VARCHAR(20) NOT NULL,
--    surname VARCHAR(20) NOT NULL,
--    age INT NOT NULL,
--    birth_date DATE,
--    address VARCHAR(20),
--    salary REAL
-- );

-- CREATE TABLE person(
--   id INT NOT NULL,
--   name VARCHAR(20) NOT NULL,
--   surname VARCHAR(30) NOT NULL,
--   age INT NOT NULL,
--   birth_date DATE,
--   address VARCHAR(50),
--   salary REAL,
--   PRIMARY KEY(name, surname) --kombinacia name+surname je jedinecna
-- );

-- SERIAL / IDENTITY COLUMN
-- CREATE TABLE color(
--    id INT GENERATED ALWAYS AS IDENTITY,
--    name VARCHAR NOT NULL,
--    primary key(id)
-- );

-- CREATE TABLE color_serial(
--    id SERIAL,
--    name VARCHAR NOT NULL,
--    primary key(id)
-- );

--2 DROP
-- DROP TABLE person; --zmaze tabulku

--3 TRUNCATE
-- TRUNCATE TABLE color;
-- TRUNCATE TABLE color CASCADE;
-- TRUNCATE TABLE color RESTART IDENTITY;

--4 ALTER
