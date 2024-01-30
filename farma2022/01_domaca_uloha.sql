DROP TABLE IF EXISTS links, urls;

CREATE TABLE links(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(20),
    url VARCHAR(50)
);

INSERT INTO links (name, url)
    VALUES
        ('Facebook', 'www.facebook.com'),
        ('LinkedIn', 'www.linkedin.com'),
        ('CDE', 'www.cde.sk');

ALTER TABLE links RENAME TO urls;

UPDATE urls
SET name = 'Microsoft'
WHERE id = 2;

--pozor, vymaze vsetko!
--DELETE FROM urls;
--TRUNCATE urls;

DELETE FROM urls WHERE id = 1;

SELECT * FROM urls;
