1)Write a SQL query to count the number of characters except the spaces for each actor. Return first 10 actors name length along with their name.

select * from actor;
Select concat(First_name,space(1),Last_Name) as FUllname,
Length (concat(first_name,space(1),Last_Name))-1 as FUllnameLength
from actor limit 10;


2)List all Oscar awardees(Actors who received Oscar award) with their full names and length of their names.

select * from actor_award;
select concat(a.First_name,Space(1),a.Last_Name) as FullName,
length(concat(a.First_name,space(1),a.Last_Name))-1 from actor a
join actor_award as aa on a.actor_ID=aa.actor_ID where aa.awards like '%Oscar%';


3)Find the actors who have acted in the film ‘Frost Head’.

select concat(a.First_Name,space(1),a.Last_Name) as FullName from actor a
join  film_actor fa on A.actor_iD=FA.actor_ID
Join Film  F on   FA.film_ID=F.Film_ID 
where f.title = 'Frost Head';


4)Pull all the films acted by the actor ‘Will Wilson’.


select f.title from film f
join film_actor FA on f.film_ID= FA.Film_ID
Join Actor a on FA.actor_ID = A.Actor_ID where a.first_Name='will' and a.last_name='wilson'


5)Pull all the films which were rented and return in the month of May.

select f.title from film f
join inventory I on f.film_ID= I.film_ID
join Rental R on i.Inventory_ID= R.Inventory_ID
where Month ( r.Rental_date)= 5 AND MONTH(r.Return_Date) = 5;



6)Pull all the films with ‘Comedy’ category

SELECT f.Title AS Film_Title
FROM Film f
JOIN Film_Category fc ON f.Film_ID = fc.Film_ID
JOIN Category c ON fc.Category_ID = c.Category_ID
WHERE c.Name = 'Comedy';
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
