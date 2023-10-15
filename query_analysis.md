##SQL Analysis of DVD Rental Database##
The following set of 10 diverse SQL queries provides an in-depth analysis of a DVD rental database. This project offers an opportunity to analyze customer rental behavior, identify high-spending customers, track actor movie counts, and explore films in specific genres. These queries provide valuable insights into the rental business, customer preferences, and the performance of actors and films in the dataset.

In addition, for a more in-depth view and to facilitate better comprehension, the results of each query are extracted and stored as csv files in the "sqlquery" folder. Each file corresponds to the respective query, allowing to explore the data in a more familiar format, helping in interpretations, and making it easier to generate insights and drive actions.

1.SELECT and WHERE

  SELECT * FROM actor WHERE first_name LIKE 'P%';

  This query retrieves all the records from actors whose first name starts with P letter'. It helps to see the list actors with starting initial P in the database.

2.COUNT, BETWEEN, AND ORDER BY

  SELECT customer_id , count(*) AS Rental_Count
  FROM rental
  WHERE rental_date BETWEEN '2005-07-01' AND '2005-08-31'
  GROUP BY customer_id
  ORDER BY Rental_Count DESC;

  This query retrieves the number of rentals each customer made during the year 2005 and 2006. It helps to identify the rental trens within that year.




