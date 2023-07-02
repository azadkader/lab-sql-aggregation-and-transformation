use sakila;
show tables;

select * from film;
select max(length) as max_duration,min(length) as min_duration from film;

Select DATE_FORMAT(SEC_TO_TIME(AVG(length) * 60), '%H:%i') as average_movie_time from film;

SELECT DATEDIFF(max(rental_date),min(rental_date)) AS days_of_operation FROM rental;
select * from rental;
SELECT rental_date, 
       DATE_FORMAT(rental_date, '%M') AS month, 
       DATE_FORMAT(rental_date, '%W') AS weekday 
FROM rental
limit 20;

SELECT rental_date, 
       DATE_FORMAT(rental_date, '%W') AS weekday,
       CASE 
           WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
           ELSE 'workday'
       END AS day_type
FROM rental;

SELECT title, COALESCE(rental_duration, 'Not Available') AS rental_duration
FROM film;

SELECT CONCAT(first_name, last_name) AS full_name,  LEFT(email, 3) as email FROM customer
order by last_name asc;

select * from film;
select count(film_id) as total_number_of_films_released from film;

select distinct rating, count(title) as count from film
group by rating
order by count desc;

 select * from rental;
 select staff_id as employee, count(rental_id) as rentals from rental
 group by staff_id;
 
 select * from film;
 select avg(length), rating from film
 group by rating;

select avg(length) as avg_length,rating from film
group by rating
having avg(length) > 120;

select * from actor;
select last_name from actor
group by last_name
having count(*) = 1;


