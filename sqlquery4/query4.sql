SELECT customer_id , count(*) AS total_rental
FROM rental
GROUP BY customer_id 
ORDER BY Rental_Count DESC;

