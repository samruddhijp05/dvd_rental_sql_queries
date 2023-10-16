SELECT concat(actor.first_name,' ', actor.last_name) as actor_name, COUNT(film.film_id) as film_count
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor_name;
