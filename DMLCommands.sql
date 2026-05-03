/* DML Commands :- used to insert,update and delete from the row.

Insert:- Adds new rows to table

	M-1:- Manual Entry Values
	M-2:- Insert Using Select

*/



-- M-1:- Manual Entry Values

-- Add new data to customer

insert into customers (id,first_name,country,score) values (6,'Anna','USA',300),(7,'Sahra','Germany',null)

select * from customers;


-- M-2:- Insert using select

-- copy data from customer tables into persons

create table persons (id int not null,first_name varchar(50) not null, country varchar(50), score int);

select * from persons;

insert into persons (id,first_name,country,score) select id,first_name,country,null from customers;

insert into customers (id,first_name,country,score) values(8,'Sara','USA',0),(9,'Sam','Germany',200),(10,'Andreas','UK',null);

select * from persons;




--Change the score of customer with id 6 to 0.

select * from customers;

update customers set score = 200 where id = 7;


--change the score of customer with id 10 to 0 & update the country to UK;

update customers set score = 0 , country = 'UK' where id = 10


--delte the persons with the id greater than 5


select * from persons;

delete from persons where id > 5;


truncate table persons;


select * from persons;


delete from persons;

