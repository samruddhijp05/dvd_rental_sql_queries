## The query will retrieve the country wise its customer base and total sales records 
SELECT country, count(DISTINCT  customer.customer_id) AS customer_base, SUM(payment.amount) AS total_sales
FROM country
JOIN city ON country.country_id=city.country_id
JOIN address ON address.city_id=city.city_id
JOIN customer ON customer.address_id=address.address_id
JOIN payment ON customer.customer_id=payment.customer_id
GROUP BY country
ORDER BY 2 DESC;
