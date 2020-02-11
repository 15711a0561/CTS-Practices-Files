use sakila
describe actor
select * from actor where first_name= 'Scarlett'
select * from actor where last_name= 'Johansson'
select count(distinct last_name) from actor;
select last_name from actor group by last_name having count(*) = 1;
select last_name from actor group by last_name having count(*) > 1;
select avg(length) from film;
select * from film natural join inventory;
select actor.actor_id, actor.first_name, actor.last_name,
       count(actor_id) as film_count
from actor join film_actor using (actor_id)
group by actor_id
order by film_count desc limit 1
