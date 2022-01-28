-- 1. Display the number of unique inventory rented and the total number of inventory rented

select count(distinct inventory_id) from rental;

select count(inventory_id) from rental;

-- 2. List all the films of Dan Torn and Dan Streep. Sort by film_title alphabetical order

-- 3. List all Comedy films of all actors whose last names start with 'D'. Sort by actor_full_name alphabetical order

-- 4.  Determine the potential number of customers a store staff would serve (count the number of customer in the same country as the staff)

-- 5. Find the most popular film category per store (determined by the number of rentals)

-- 6. Rank the top 5 actors per country (determined by the number rentals) sort by most popular to least popular

-- 7. Create the ERD of this database.
