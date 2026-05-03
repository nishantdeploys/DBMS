-- create a new table called person with columns: id,person_name,birth_date & phone.


create table persons (id int not null , person_name varchar(50),birth_date date, phone_no varchar(50) not null , constraint pk_persons primary key (id));

select * from persons;


-- Add a new column called email to the persons tables

alter table persons add email varchar(50) not null;


select * from persons;


-- remove the column phone from the person table.

alter table persons drop column phone_no;


-- Delete the person table from the  database;

drop table persons;


