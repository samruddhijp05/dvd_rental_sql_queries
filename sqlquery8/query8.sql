SELECT c.name AS Genre, count(DISTINCT cu.customer_id) AS Total_rent_demand
FROM category c
JOIN film_category fc
USING(category_id)
JOIN film f
USING(film_id)
JOIN inventory i
USING(film_id)
JOIN rental r
USING(inventory_id)
JOIN customer cu
USING(customer_id)
GROUP BY 1
ORDER BY 2 DESC;
