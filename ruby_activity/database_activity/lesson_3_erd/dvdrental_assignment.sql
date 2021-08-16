-- 1.
SELECT COUNT(DISTINCT inventory_id) as unique_inventory_rented,COUNT(*) as total_inventory_rented FROM rental;

-- 2. 

SELECT film.title as film_title, film.release_year as release_year, film.rating as rating, film.rating as rating, 
film.rating as rating, actor.first_name||' '||actor.last_name as actor_full_name FROM actor inner join film_actor
on actor.actor_id = film_actor.actor_id inner join film on film_actor.film_id = film.film_id where actor.first_name = 'Dan' 
and actor.last_name = 'Torn' or actor.first_name = 'Dan' and actor.last_name = 'Streep' order by film_title;
  
-- 3. 

SELECT actor.first_name||' '||actor.last_name as actor_full_name, film.title as film_title, category.name as category_name
FROM actor inner join film_actor on actor.actor_id = film_actor.actor_id inner join film on film_actor.film_id = film.film_id
inner join film_category on film.film_id = film_category.film_id inner join category on film_category.category_id = category.category_id
where actor.last_name like 'D%' and category.name = 'Comedy' order by actor_full_name;
  
-- 4.  
SELECT staff_list.name as staff_full_name, count(staff_list.country) as customer_count FROM staff_list JOIN customer_list on staff_list.country = customer_list.country
GROUP BY staff_list.name;

-- 5. 
SELECT store.store_id, count(inventory.film_id) as film_count, category.name FROM rental JOIN staff on rental.staff_id = staff.staff_id
JOIN store on store.manager_staff_id = staff.staff_id JOIN inventory on rental.inventory_id = inventory.inventory_id JOIN film_category
on inventory.film_id = film_category.film_id JOIN category on film_category.category_id = category.category_id GROUP BY category.name, store.store_id
ORDER BY film_count desc;

-- 6. 

SELECT staff_list.country, concat(actor.first_name, ' ' , actor.last_name) as actor_full_name, RANK () over
( partition by staff_list.country order by count(inventory.film_id) desc) as actor_rank, count(inventory.film_id) as rent_count 
FROM rental JOIN inventory on rental.inventory_id = inventory.inventory_id JOIN film on film.film_id = inventory.film_id JOIN film_actor
on film.film_id = film_actor.film_id JOIN actor on film_actor.actor_id = actor.actor_id JOIN staff_list on staff_list.id= rental.staff_id
GROUP BY staff_list.country, actor_full_name ORDER BY actor_rank asc;
