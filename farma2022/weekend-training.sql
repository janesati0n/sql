-- vytvorit tabulku person s automaticky inkrementovanym stlpcom id (serial, identity) a roznymi obmedzeniami na stlpce (constraints)
-- pouzit ten create, co uz mame s jednym primarnym klucom
-- zmenit nazov stlpca v tabulke person z identification_number na id_number
-- odstranit constraint NOT NULL z mena (name)
-- pridat NOT NULL pre email v kontaktoch
-- ALTER TABLE t ALTER COLUMN abc SET NOT NULL

DROP TABLE IF EXISTS person, contact;

CREATE TABLE person(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(20) NOT NULL,
  surname VARCHAR(30) NOT NULL,
  age INT NOT NULL CHECK(age >= 0),
  birth_date DATE,
  address VARCHAR(50),
  identification_number UUID NOT NULL UNIQUE,
  salary DECIMAL(18,2) DEFAULT 5000.00 CHECK(salary > 0)
);

CREATE TABLE contact(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    person_id INT,
    email VARCHAR(20),
    CONSTRAINT fk_person
        FOREIGN KEY(person_id)
        REFERENCES person(id)
);

ALTER TABLE person ADD COLUMN sex VARCHAR(10);
ALTER TABLE person DROP COLUMN address;
ALTER TABLE person RENAME sex TO gender;
ALTER TABLE person RENAME identification_number to id_number;
ALTER TABLE person ALTER COLUMN name DROP NOT NULL;
ALTER TABLE contact ALTER COLUMN email SET NOT NULL;
