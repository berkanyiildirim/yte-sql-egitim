
--select from
select first_name || ' ' || last_name as isim_soyisim, email from customer;

--order by
select distinct on (city) city ülke, country_id as ülke from city order by city desc;

--distinct 
select
	distinct on
	(country_id) country_id ülke,
	city as sehir
from
	city
order by
	country_id;

--where
select
	first_name,
	length(first_name) as isim_uzunlugu
from
	customer 
where
	first_name like 'A%' and length(first_name) between 3 and 5 order by  length(first_name);


--where...in
select
	customer_id,
	rental_id ,
	rental_date
from
	rental
where
	cast(rental_date as DATE) = '2022-08-21'
	and customer_id in (
	select
		customer_id
	from
		customer
	where
		first_name in ('JON', 'MICHELLE'))
order by
	customer_id ;


--limit/offset
SELECT distinct on (length) length, title 
FROM film
WHERE length IN (
    SELECT DISTINCT length
    FROM film
    ORDER BY length DESC
    LIMIT 5
)
ORDER BY length desc 
LIMIT 1 offset 2;

--between/like
select
	*
from
	payment
where
	payment_date between 
	'2022-01-01'
	and '2022-03-01'
	and customer_id in (
	select
		customer_id
	from
		customer
	where
		first_name like '_ERT%')
order by
	customer_id ;



select
	*
from
	payment
where
	payment_date >= '2022-01-01'
	and payment_date <= '2022-03-01'
	and customer_id in (
	select
		customer_id
	from
		customer
	where
		first_name like '_ERT%') order by customer_id ;


--group by
select
	customer_id,
	staff_id,
	SUM(amount)
from
	payment
group by
	staff_id,
	customer_id
order by
	customer_id;



--having
select
	store_id,
	COUNT(customer_id)
from
	customer
group by
	store_id
having
	COUNT (customer_id) > 200;


--Right join
SELECT
customer.customer_id,
first_name,
last_name,
amount,
payment_date
FROM
customer
right join payment 
ON payment.customer_id = customer.customer_id
ORDER BY amount desc ;


--Left join
select
	c.customer_id,
	c.first_name customer_first_name,
	c.last_name customer_last_name,
	s.first_name staff_first_name,
	s.last_name staff_last_name,
	amount,
	payment_date
from
	customer c
inner join payment p on
	p.customer_id = c.customer_id
inner join staff s on
	p.staff_id = s.staff_id
order by
	payment_date;