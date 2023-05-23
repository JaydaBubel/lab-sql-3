-- How many distinct (different) actors' last names are there?

use sakila

-- In how many different languages where the films originally produced? (Use the column language_id from the film table) (Answer: 1)

select count(distinct language_id) as language_count
from film;

-- How many movies were released with "PG-13" rating? (Answer: 223)

select count(*) as PG13_Rating_Count
From film
Where rating = 'PG-13';

-- Get 10 the longest movies from 2006.

select *
from film
where release_year = 2006
order by length desc
limit 10;

-- How many days has been the company operating (check DATEDIFF() function)? (Answer: 266?)
select DATEDIFF(max(rental_date), min(rental_date)) as time_difference
from rental;

-- Show rental info with additional columns month and weekday. Get 20.
select *,
       month(rental_date) as rental_date_month,
       dayname(rental_date) as rental_date_weekday
from rental;
limit 20;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

select 
*,
case 
 when dayofweek(rental_date) = 1 then 'weekend'
    when dayofweek(rental_date) = 2 then 'workday'
    when dayofweek(rental_date) = 3 then 'workday'
    when dayofweek(rental_date) = 4 then 'workday'
    when dayofweek(rental_date) = 5 then 'workday'
    when dayofweek(rental_date) = 6 then 'workday'
    when dayofweek(rental_date) = 7 then 'weekend'
else 'unknown' end as day_type
from rental;

-- How many rentals were in the last month of activity? (Answer: 182)
SELECT COUNT(*) AS rental_count
FROM rental
WHERE YEAR(rental_date) = 2006 AND MONTH(rental_date) = 2;