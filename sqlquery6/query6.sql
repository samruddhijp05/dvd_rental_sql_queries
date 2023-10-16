select concat(first_name,' ',last_name) as full_name from customer where customer_id IN (
select customer_id FROM
	(
select customer_id,sum(amount) as total_spend from payment
group by customer_id
order by total_spend desc
limit 5) cal_tb
	)
