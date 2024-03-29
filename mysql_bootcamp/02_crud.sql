# CREATE
-- DROP TABLE cats;
-- CREATE TABLE cats (
-- 	cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     breed VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- ); 
-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
-- 	('Cindy', 'Maine Coon', 10),
-- 	('Dumbledore', 'Maine Coon', 11),
--     ('Egg', 'Persian', 4),
--     ('Misty', 'Tabby', 13),
--     ('George Michael', 'Ragdoll', 9),
--     ('Jackson', 'Sphynx', 7);

# READ
-- SELECT * FROM cats WHERE age=4;
-- SELECT cat_id FROM cats;
-- SELECT name, breed FROM cats;
-- SELECT name, age FROM cats WHERE breed='Tabby';
-- SELECT cat_id, age FROM cats WHERE cat_id=age;

# Aliases
-- SELECT cat_id AS id, name FROM cats;

# UPDATE
-- UPDATE employees SET last_name='roosterbeard' WHERE employee_id=1;
-- UPDATE employees SET current_status='laid-off', last_name='who_cares';

# Excercise
-- SELECT * FROM cats WHERE name='Jackson';
-- UPDATE cats SET name='Jack' WHERE name='Jackson';
-- SELECT * FROM cats WHERE name='Ringo';
-- UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
-- SELECT * FROM cats WHERE breed='Maine Coon';
-- UPDATE cats set age=12 WHERE breed='Maine Coon';

# DELETE
-- SELECT * FROM cats WHERE name='Egg';
-- DELETE FROM cats WHERE name='Egg';

# Excercise
-- SELECT * FROM cats WHERE age=4;
-- DELETE FROM cats WHERE age=4;
-- SELECT * FROM cats WHERE age=cat_id;
-- DELETE FROM cats WHERE age=cat_id;
-- SELECT * FROM cats;
-- DELETE FROM cats;
