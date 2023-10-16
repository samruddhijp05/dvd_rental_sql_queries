WITH duration_of_rental AS(
select rental_id, customer_id,AGE(return_date,rental_date) as no_of_days_rented from rental)
select customer_id,no_of_days_rented,
CASE WHEN no_of_days_rented>='8 days' THEN 'REMINDER EMAIL TO CUSTOMER'
ELSE 'NO ACTION'
END
from duration_of_rental
