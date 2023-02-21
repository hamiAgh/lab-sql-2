#1. Select all the actors with the first name ‘Scarlett’
USE sakila;

SELECT first_name
FROM actor
WHERE first_name= 'Scarlett';

#2. Select all the actors with the last name ‘Johansson’.
SELECT last_name FROM actor
WHERE last_name= "Johansson";

#3. How many films (movies) are available for rent?
SELECT COUNT(DISTINCT title)
FROM film;

#4. How many films have been rented?
SELECT inventory_id, rental_date FROM Rental
WHERE rental_id IS NOT NULL;

#5. What is the shortest and longest rental period?
SELECT rental_id, max(return_date-rental_date) AS Max_rental_period, min(return_date-rental_date) AS Min_rental_period
FROM rental;

SELECT MAX(rental_duration) AS "shortest rental period", MIN(rental_duration) AS "longest rental period"
FROM film;

#6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length), min(length) FROM film;

#7. What's the average movie duration?
SELECT AVG(length) AS average_movie_duration
FROM film;

#8. What's the average movie duration expressed in format (hours, minutes)?
SELECT length
FROM film;

#9. How many movies longer than 3 hours?
SELECT COUNT(title) FROM film 
WHERE (length/60)>3;

#10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT * FROM customer;



#11. What's the length of the longest film title?
SELECT title AS "longest film title", length AS "film_length"
FROM film 
ORDER BY LENGTH(title) DESC
LIMIT 1;


