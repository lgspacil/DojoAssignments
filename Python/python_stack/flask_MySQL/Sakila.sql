-- select customer.first_name, customer.last_name, customer.email, address.address
-- from customer
-- join address on customer.address_id = address.address_id
-- where city_id = '312'


-- select film.title, film.description, film.release_year, film.rental_rate, film.special_features, category.name
-- from film
-- join film_category on film_category.film_id = film.film_id
-- join category on category.category_id = film_category.category_id
-- where category.name = 'Comedy'

-- select actor.actor_id, concat(actor.first_name, ' ',actor.last_name) as actor, film.title, film.description, film.release_year
-- from film
-- join film_actor on film_actor.film_id = film.film_id
-- join actor on actor.actor_id = film_actor.actor_id
-- where actor.actor_id = 5

-- select customer.first_name, customer.last_name, customer.email, address.address
-- from customer
-- join address on address.address_id = customer.address_id
-- join city on city.city_id = address.city_id
-- where store_id = 1 and city.city_id in(1, 42, 312, 459)


-- select film.title, film.description, film.release_year, film.rating, film.special_features
-- from film
-- join film_actor on film_actor.film_id = film.film_id
-- join actor on actor.actor_id = film_actor.actor_id
-- where film.rating = 'G' 
-- and film.special_features like '%behind the scenes%'
-- and actor.actor_id = 15

-- 6. What query would you run to get all the actors that joined in the film_id = 369? 
-- Your query should return the film_id, title, actor_id, and actor_name.

-- select film.film_id, film.title, actor.actor_id, actor.first_name
-- from film 
-- join film_actor on film_actor.film_id = film.film_id
-- join actor on actor.actor_id = film_actor.actor_id
-- where film.film_id = 369

-- 7. What query would you run to get all drama films with a rental rate of 2.99? 
-- Your query should return film title, description, release year, rating, special features, and genre (category).

-- select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
-- from film
-- join film_category on film_category.film_id = film.film_id
-- join category on category.category_id = film_category.category_id
-- where film.rental_rate = '2.99'


-- 8. What query would you run to get all the action films which are joined by SANDRA KILMER? 
-- Your query should return film title, description, release year, rating, special features, 
-- genre (category), and actor's first name and last name.

-- select film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
-- from actor
-- join film_actor on film_actor.actor_id = actor.actor_id
-- join film on film.film_id = film_actor.film_id
-- join film_category on film_category.film_id = film.film_id
-- join category on category.category_id = film_category.category_id
-- where actor.first_name = 'sandra' 
-- and actor.last_name = 'kilmer'
-- and category.name = 'action'












