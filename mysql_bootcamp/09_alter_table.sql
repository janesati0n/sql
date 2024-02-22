# Adding Columns
-- ALTER TABLE companies ADD COLUMN city VARCHAR(25);
-- ALTER TABLE companies ADD COLUMN phone VARCHAR(15);
-- ALTER TABLE companies ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

# Dropping Columns
-- ALTER TABLE companies DROP COLUMN employee_count;
-- ALTER TABLE companies DROP COLUMN phone;

# Renaming
-- RENAME TABLE companies TO suppliers;
-- ALTER TABLE suppliers RENAME TO companies;

-- ALTER TABLE companies RENAME COLUMN name TO biz_name;

# Modifying Columns
-- ALTER TABLE companies MODIFY biz_name VARCHAR(100) DEFAULT 'unknown';
-- INSERT INTO companies (address) VALUES ('2554 rose lane');

-- ALTER TABLE companies 
-- CHANGE biz_name company_name VARCHAR(50) DEFAULT 'unknown';

# Constraints
-- ALTER TABLE houses ADD CONSTRAINT positive_purchase CHECK (purchase_price >= 0);
-- INSERT INTO houses (purchase_price, sale_price) VALUES (-1, 4);		//Error

-- ALTER TABLE houses DROP CONSTRAINT positive_purchase;
-- INSERT INTO houses (purchase_price, sale_price) VALUES (-1, 4);		//Working now

-- ALTER TABLE houses DROP CONSTRAINT sale_gt_purchase;
-- INSERT INTO houses (purchase_price, sale_price) VALUES (800, 400);    //Working now
