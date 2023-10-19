# SQL Analysis of DVD Rental Database
The following set of 10 diverse SQL queries provides an in-depth analysis of a DVD rental database. The queries cover various aspects of the business, including customer behaviors, film properties, rental patterns, and staff performance.

In addition, for a more in-depth view and to facilitate better comprehension, the results of each query are fetched and stored as csv files. 
<br>

**1.

```
SELECT * FROM actor WHERE first_name LIKE 'P%';
```

This query retrieves all the records of actor table where first name starts with P letter.

<br>

**2. 
```
SELECT concat(actor.first_name,' ', actor.last_name) as actor_name, COUNT(film.film_id) as film_count
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor_name;
```

This query retrieves a list of actor names alongside the count of films each actor has appeared in, providing insights into which actors have appeared in the most films in the DVD rental database.

<br>

**3.
```
select rating,title, sum(length) as length
from film
where length<=90 AND RATING IN ('G','R')
group by rating, title
order by length desc;
```

This query returns set of records which is sorted in descending order by length, allowing you to see which titles have the most runtime within the specified ratings G and R.

<br>

**4. 
```
SELECT customer_id , count(*) AS total_rental
FROM rental
GROUP BY customer_id 
ORDER BY total_rental DESC;
```

This query returns number of rentals for each customer.This provides insights into customer rental behavior by counting the total number of rentals for each customer 

<br>

**5. 
```
SELECT DISTINCT category_name,
	COUNT(film_title) OVER(PARTITION BY  category_name) AS category_count

FROM
	(SELECT f.title film_title, c.name category_name
	FROM film f 
	JOIN film_category fc ON fc.film_id = f.film_id
	JOIN category c ON c.category_id = fc.category_id) t1

ORDER BY category_count;
```

This SQL query retrieves and counts the distinct film categories and the number of films within each category. This allows you to see which categories have the fewest films in the DVD rental database.

<br>

**6. 

```
select concat(first_name,' ',last_name) as full_name from customer where customer_id IN (
select customer_id FROM
	(
select customer_id,sum(amount) as total_spend from payment
group by customer_id
order by total_spend desc
limit 5) cal_tb
	)
```
This SQL query retrieves the full names of the top 5 customers who have spent the most based on their total payments. This provides insights into the most valuable customers based on their spending behavior.

<br>

**7. 

```
SELECT c.name AS genre, ROUND(AVG(f.rental_rate),2) AS Average_rental_rate
FROM category c
JOIN film_category fc
USING(category_id)
JOIN film f
USING(film_id)
GROUP BY 1
ORDER BY 2 DESC;
```
This SQL query calculates the average rental rate for each film genre. This allows you to identify which genres have the highest average rental rates, making it useful for understanding the popularity and pricing of films in different categories.
<br>

**8. 

```
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

```

This SQL query analyzes the total rental demand for films in various genres in the DVD rental database. This result helps identify which genres are most popular among customers, making it useful for assessing the success and appeal of films in various categories.
<br>

**9. 

```
WITH duration_of_rental AS(
select rental_id, customer_id,AGE(return_date,rental_date) as no_of_days_rented from rental)
select customer_id,no_of_days_rented,
CASE WHEN no_of_days_rented>='8 days' THEN 'REMINDER EMAIL TO CUSTOMER'
ELSE 'NO ACTION'
END
from duration_of_rental

```
This SQL query helps determine whether customers need to receive a reminder email based on the number of days their rentals lasted. If a rental lasts 8 days or more, the query suggests sending a reminder email to the customer. 
The query result helps to automate customer communication based on their rental history.
<br>

**10.
```
SELECT country, count(DISTINCT  customer.customer_id) AS customer_base, SUM(payment.amount) AS total_sales
FROM country
JOIN city ON country.country_id=city.country_id
JOIN address ON address.city_id=city.city_id
JOIN customer ON customer.address_id=address.address_id
JOIN payment ON customer.customer_id=payment.customer_id
GROUP BY country
ORDER BY 2 DESC;
```
This SQL query focused on analyzing customer data by country, including the customer base and the total sales generated from each country.
This helps identify the countries with the most significant customer presence and revenue contribution, making it useful for business analysis and decision-making.
