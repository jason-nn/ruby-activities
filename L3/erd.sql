-- 1. Display the number of unique inventory rented and the total number of inventory rented

select count(distinct inventory_id) from rental;

select count(inventory_id) from rental;

-- 2. List all the films of Dan Torn and Dan Streep. Sort by film_title alphabetical order

select f.title as film_title, f.release_year, f.rating, concat(a.first_name, ' ' , a.last_name) as actor_full_name from film_actor fa inner join actor a on fa.actor_id = a.actor_id inner join film f on fa.film_id = f.film_id where a.first_name = 'Dan' and (a.last_name = 'Torn' or a.last_name = 'Streep') order by f.title asc;

-- 3. List all Comedy films of all actors whose last names start with 'D'. Sort by actor_full_name alphabetical order

select concat(a.first_name, ' ' , a.last_name) as actor_full_name, f.title as film_title,c.name as category_name from film_category fc inner join category c on fc.category_id = c.category_id inner join film f on f.film_id = fc.film_id inner join film_actor fa on fa.film_id = f.film_id inner join actor a on fa.actor_id = a.actor_id where c.name = 'Comedy' and a.last_name like 'D%' order by actor_full_name asc;

-- 4.  Determine the potential number of customers a store staff would serve (count the number of customer in the same country as the staff)

select 
staff_query.staff_full_name, 
customer_query.customer_count 
from
(
  select count(customer.customer_id) as customer_count, country.country from customer inner join address on customer.address_id = address.address_id inner join city on address.city_id = city.city_id inner join country on city.country_id = country.country_id group by country.country
) 
as customer_query 
right join
(
  select concat(staff.first_name, ' ', staff.last_name) as staff_full_name, country.country from staff inner join address on staff.address_id = address.address_id inner join city on address.city_id = city.city_id inner join country on city.country_id = country.country_id
) 
as staff_query
on staff_query.country = customer_query.country;

-- 5. Find the most popular film category per store (determined by the number of rentals)

-- 6. Rank the top 5 actors per country (determined by the number rentals) sort by most popular to least popular

-- 7. Create the ERD of this database.
