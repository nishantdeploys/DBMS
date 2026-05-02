select * from customers order by score desc;
select * from customers order by score asc;

/*
Retrive all the customers and sort the result by the country and then by the highest score. 
*/

select * from customers order by country asc, score desc;



-- Group By

/*
select column_name, alise(if there) from table_name group by column_name;
*/

/* Find the total scores for each country */


select country, sum(score) as total_score from customers group by country;



/* Finf the total scores and total number of customers for each country */


select sum(score) as total_score, count(id) as total_customers, country from customers group by country;




-- Having Clause

/* Filter Data after aggregation can be used only with group by


1. from table
2. group by
3. having

*/


/* Fing the avg score for each country considering only customer with a score not equal to 0
and return only those countries with an average score greater than 430 
*/



select country,avg(score) as Avg_Score from customers where score != 0 group by country;



--Distinct

/* Removes duplicates (repeated values). Each value appears only once. */


select distinct country from customers;



--Top

/* Restrict the numbers of row returned */

select top 3 * from customers;


/* Retrive the top 3 customers with highest scores */

select top 3 * from customers order by score desc;


/* Retrice the lowest 2 customers with lowest scores */

select top 2 * from customers order by score asc;



-- Get the two most recent orders

select top 2 * from orders order by order_date desc;