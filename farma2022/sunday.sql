--Prezentacia 4, slide 22
--1 Find a department, that has no employees
-- SELECT first_name, last_name, name AS department FROM department d
-- LEFT JOIN staff s ON d.department_id = s.department_id
-- WHERE last_name IS NULL;

--2 Select employees who do not belong to any department
-- SELECT first_name, last_name, name AS department FROM department d
-- FULL JOIN staff s ON d.department_id = s.department_id
-- WHERE name IS NULL;

--3 Find all employees working in the Sales department
-- SELECT first_name, last_name, name AS department FROM department d
-- INNER JOIN staff s ON d.department_id = s.department_id
-- WHERE s.department_id = 1;
