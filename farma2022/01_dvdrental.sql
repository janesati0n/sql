-- SELECT first_name || ' ' || last_name as fullname, email FROM customer
-- WHERE first_name LIKE 'C%';

-- SELECT DISTINCT first_name, last_name FROM customer
-- order by	last_name ASC NULLS FIRST, 
-- 			first_name ASC
-- LIMIT 10 OFFSET 3;

-- SELECT first_name, last_name, active FROM customer
-- WHERE active = 0
-- ORDER BY last_name;

-- SELECT COUNT(*) FROM payment p, customer c
-- WHERE p.customer_id = c.customer_id
-- 	AND amount > 10.00;
	
-- SELECT c.first_name || ' ' || UPPER(c.last_name) as customer, ROUND(amount), s.first_name || ' ' || UPPER(s.last_name) as staff FROM payment p, customer c, staff s
-- WHERE p.customer_id = c.customer_id
-- 	AND s.staff_id = p.staff_id
-- 	AND amount > 10.00;

--2 SELECT name FROM category;

-- ULOHA 3 
-- UPDATE film SET language_id = 2
-- WHERE title = 'Bikini Borrowers';
-- UPDATE film SET language_id = 3
-- WHERE title = 'Lonely Elephant';
-- UPDATE film SET language_id = 4
-- WHERE title = 'Matrix Snowman';

-- SELECT title FROM film
-- WHERE language_id != 1;

-- ULOHA 4 
-- SELECT district FROM address
-- order by district

--5 SELECT COUNT(film_id) FROM film_category
-- WHERE category_id = 1;

-- ULOHA 6 
-- SELECT COUNT(store_id) FROM inventory
-- WHERE store_id = 1;

-- INNER JOINT DEMO HEREEEEEEE -------------------------------------
-- SELECT COUNT(*) FROM customer
-- INNER JOIN payment 
-- USING(customer_id)
-- WHERE amount > 10;

-- ULOHA 7
-- SELECT country, city, address, phone, first_name || ' ' || last_name as manager, email
-- FROM store, address, staff, city, country
-- WHERE store.address_id = address.address_id
-- AND staff.store_id = store.store_id
-- AND address.city_id = city.city_id
-- AND city.country_id = country.country_id

-- ULOHA 7 inner join version
-- SELECT country, city, address, phone, first_name || ' ' || last_name as manager, email
-- FROM store
-- INNER JOIN address ON  store.address_id = address.address_id
-- INNER JOIN staff ON staff.store_id = store.store_id
-- INNER JOIN city ON address.city_id = city.city_id
-- INNER JOIN country ON city.country_id = country.country_id;

-- ULOHA 8
-- SELECT UPPER(title) as wanted_films FROM rental, inventory, film
-- WHERE return_date IS NULL
-- AND rental.inventory_id = inventory.inventory_id
-- AND inventory.film_id = film.film_id;

-- ULOHA 9
-- SELECT first_name || ' ' || last_name as actor, title
-- FROM actor, film_actor, film
-- WHERE actor.actor_id = film_actor.actor_id
-- AND actor.actor_id = 84
-- AND film_actor.film_id = film.film_id;

-- ULOHA 10
-- SELECT f.title
-- FROM film f, rental r, inventory i
-- WHERE r.inventory_id = i.inventory_id
-- AND i.film_id = f.film_id
-- AND EXTRACT(YEAR FROM r.rental_date) = 2006;

-- SELECT f.title AS movie,
--        st.last_name AS staff_name,
--        a.address AS store_address
-- FROM film f, rental r, inventory i, store s, staff st, address a
-- WHERE r.inventory_id = i.inventory_id
-- AND i.film_id = f.film_id
-- AND i.store_id = s.store_id
-- AND r.staff_id = st.staff_id
-- AND st.address_id = a.address_id
-- AND EXTRACT(YEAR FROM r.rental_date) = 2006;

-- ULOHA 11
-- SELECT c.first_name, c.last_name, co.country
-- FROM customer c, address a, city ci, country co
-- WHERE c.address_id = a.address_id
-- AND a.city_id = ci.city_id
-- AND ci.country_id = co.country_id
-- AND co.country IN ('Austria', 'Czech Republic', 'Hungary', 'Poland', 'Slovakia');



--STREDAJSIE HACKY DATABAZY
-- ALTER TABLE staff ADD COLUMN IF NOT EXISTS title VARCHAR(20);
-- ALTER TABLE staff ADD COLUMN IF NOT EXISTS reports_to INT;
-- ALTER TABLE staff ADD CONSTRAINT fk_customer_boss FOREIGN KEY (reports_to) REFERENCES staff (staff_id);
-- ALTER TABLE staff ADD COLUMN IF NOT EXISTS birthdate DATE;
-- ALTER TABLE staff ADD COLUMN IF NOT EXISTS hiredate DATE;
-- ALTER TABLE staff DROP COLUMN IF EXISTS username;
-- ALTER TABLE staff DROP COLUMN IF EXISTS password;
-- ALTER TABLE staff ALTER COLUMN address_id DROP NOT NULL;

-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Adams', 'Andrew', 'General Manager', NULL, '1962-02-18', '2002-08-14', 'andrew@chinookcorp.com', 1, 1, true);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Edwards', 'Nancy', 'Rent Manager', 1, '1958-12-08', '2002-05-01', 'nancy@chinookcorp.com', 2, 1, true);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Peacock', 'Jane', 'Rent Support Agent', 2, '1973-08-29', '2002-04-01', 'jane@chinookcorp.com', 3, 1, false);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Park', 'Margaret', 'Rent Support Agent', 2, '1947-09-19', '2003-05-03', 'margaret@chinookcorp.com', 4, 1, true);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Johnson', 'Steve', 'Rent Support Agent', 2, '1965-03-03', '2003-10-17', 'steve@chinookcorp.com', NULL, 2, false);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Mitchell', 'Michael', 'IT Manager', 1, '1973-07-01', '2003-10-17', 'michael@chinookcorp.com', 6, 1, true);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('King', 'Robert', 'IT Staff', 6, '1970-05-29', '2004-01-02', 'robert@chinookcorp.com', NULL, 1, true);
-- INSERT INTO staff (last_name, first_name, title, reports_to, birthdate, hiredate, email, address_id, store_id, active)
--    VALUES ('Callahan', 'Laura', 'IT Staff', 6, '1968-01-09', '2004-03-04', 'laura@chinookcorp.com', 8, 2, true);

-- UPDATE staff SET reports_to = 4 WHERE reports_to IS NULL;
-- UPDATE staff SET birthdate = '1984-12-10' WHERE birthdate IS NULL;
-- UPDATE staff SET hiredate = NOW() WHERE hiredate IS NULL;
-- UPDATE staff SET title = 'Shop Worker' WHERE staff_id = 1 OR staff_id = 2;

-- CREATE TABLE film_review(
--   review_id SERIAL PRIMARY KEY,
-- 	film_id INT,
--   review VARCHAR(255) NOT NULL
-- );

-- INSERT INTO film_review(film_id, review)
-- VALUES(1, 'Excellent'),
--      (1, 'Awesome'),
--      (2, 'Cool'),
--      (NULL, 'Beautiful');

--1 vyber recenziu, ktora nema film (1)
-- select f.title as film, r.review, f.film_id, r.review_id
-- from film f 
-- right join film_review r on r.film_id = f.film_id
-- where r.film_id is null;

--2 vyber filmy, ktore nemaju recenziu (1000-2 = 998)
-- select f.title as film, r.review, f.film_id, r.review_id
-- from film_review r
-- right join film f on r.film_id = f.film_id
-- where r.film_id is null;

--vyskusaj si full outer join ze co to spravi
-- select f.title as film, r.review, f.film_id, r.review_id
-- from film_review r
-- full outer join film f on r.film_id = f.film_id
-- where r.film_id is null;

--3 ktori zamestnanci nepozicali ani jeden film? (8)
-- select s.first_name, s.last_name, s.address_id, a.address, s.email from rental r
-- right join staff s on r.staff_id = s.staff_id
-- left join address a on s.address_id = a.address_id
-- where r.rental_id is null;

--4 Ktore rentals este nemali ziadnu platbu? (1452)
-- select staff.first_name, staff.last_name, staff.email, address.address_id from rental
-- right join staff on rental.staff_id = staff.staff_id
-- left join address on staff.address_id = address.address_id
-- where rental_id is null

--5 Su nejake platby, ktore sa neviazu k ziadnej vypozicke (rental)? (0)




-- select COUNT(DISTINCT f.language_id)
-- from film f;

-- select AVG(f.rental_rate)
-- from film f;

-- select SUM(f.length) * 60 as time_in_minutes
-- from film f;

--max cena filmov z kategorie Animation
-- SELECT MIN(f.rental_rate) FROM film f
-- join film_category fc using(film_id)
-- join category c using(category_id)
-- WHERE c.name LIKE 'Animation';

--priemer vsetkych cien filmov pre kazdu kategoriu
-- select c.name,
--        ROUND(AVG(f.rental_rate), 2) || ' EUR' as average_price,
--        MIN(f.rental_rate) as min,
--        MAX(f.rental_rate) as max,
--        count(f.film_id)
-- from film f
-- join film_category fc on f.film_id = fc.film_id
-- join category c on fc.category_id = c.category_id
-- group by c.name
-- order by average_price desc;

-- ##################################
-- ?
-- select ROUND(AVG(f.length), 2)
-- from film f
-- join film_category c on f.film_id = fc.film_id
-- join category c on fc.category_id = c.category.id
-- ##################################

--6 Ktory zamestnanec nema sefa
-- select 	boss.staff_id as boss_id, 
-- 		s.staff_id as staff_id, 
-- 		s.first_name as staff_name,
-- 		s.last_name as staff_surname
-- from staff s
-- left join staff boss 
-- 	on s.reports_to = boss.staff_id
-- where boss.staff_id IS NULL;

--6b Vypisat mena sefov
-- select DISTINCT boss.staff_id as boss_id, 
-- 		boss.first_name as boss_name,
-- 		boss.last_name as boss_surname,
-- 		boss.title as staff_title
-- from staff s
-- left join staff boss 
-- 	on s.reports_to = boss.staff_id
-- where boss.staff_id IS NOT NULL;


--9
-- create or replace view full_address as (
-- 	select a.address_id, address, address2, district, postal_code, phone, a.last_update, city, country
-- 	from address a
-- 	join city c using(city_id)
-- 	join country ct using(country_id)
-- );

-- vsetky adresy customerov z noveho viewu
-- select c.first_name, c.last_name, fa.address, fa.district, fa.city, fa.country from customer c
-- join full_address fa on c.address_id = fa.address_id;

--agregatory
--4
-- select fa.country, SUM(amount) 
-- from payment p
-- 	join rental r on r.rental_id = p.rental_id
-- 	join customer c on c.customer_id = r.customer_id
-- 	join full_address fa on c.address_id = fa.address_id
-- group by fa.country;

-- select c.first_name, c.last_name, SUM(amount)
-- from payment p
-- join customer c using(customer_id)
-- group by c.customer_id
-- having SUM(amount) > 100;


--SUBQUERY
-- select * from film f
-- where f.rental_rate BETWEEN (
-- 	select AVG(rental_rate)
-- 	from film
-- ) AND 3;

--v kategorii Action a Drama
--join
-- SELECT f.title, fc.category_id from film f
-- join film_category fc on fc.film_id = f.film_id
-- join category c on fc.category_id = c.category_id
-- where c.name in ('Action', 'Drama');

--exists
-- SELECT first_name, last_name
-- from customer c
-- where EXISTS (
-- 	SELECT 1 FROM payment p
-- 	WHERE p.customer_id = c.customer_id
-- 	AND amount > 11
-- )
-- ORDER BY first_name, last_name

--zakaznici, ktori vypozicali filmy aspon 5-krat
		-- select * from film f
		-- where f.rental_rate BETWEEN (
		-- 	select AVG(rental_rate)
		-- 	from film
		-- ) AND 3;
