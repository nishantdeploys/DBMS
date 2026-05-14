use MyDatabase;

--Retrive all customers from germany

select * from customers;

select  * from customers where country = 'Germany';


--Retrive all customers who are not from germany

select * from customers where country != 'Germany';


--Retrive all customers with a score gerater than 500

select * from customers where score > 500;

