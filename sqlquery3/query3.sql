select rating,title, sum(length) as length
from film
where length<=90 AND RATING IN ('G','R')
group by rating, title
order by length desc;
