--MODULE 2

--Create Database

Create database Assignment
use Assignment

--1. Create a customer table which comprises of these columns: customer_id int,
--first_name varchar(30), last_name varchar(30), email varchar(50), 
--address varchar(30), city varchar(30),state varchar(30),zip int 

Create table Customer (Customer_id int,First_name varchar(30), Last_name varchar(30), email varchar(50), 
Address varchar(30), City varchar(30),State varchar(30),Zip int)

--2. Insert 5 new records into the table

-- Single Record
insert into Customer values (1,'Sana','B','sana@gmail.com','Jayanagar','Bangalore','Karnataka',5877)

-- Multiple Records

insert into Customer values 
		(2, 'Apurva','Wankade','apurva@yahoo.com','5th Cross','Pune','Mumbai',6894),
		(3,'Gautham','Sinha','gautham@yahoo.com','New City','San Jose','CA',12868),
		(4,'Vishal','V','vishal@gmail.com','4th Cross','Chennai','TamilNadu',6958),
		(5,'Bob','Barly','bob@hotmail.com','3rd Street','Texas','CA',84985);

--Reference

insert into Customer (Customer_id, First_name) values
(1,'Sana'),
(2,'Aadi'),
(3,'Sujeet')

Select * from Customer

Truncate table Customer

--3. Select only the ‘first_name’ and ‘last_name’ columns from the customer
--table

Select First_name,Last_name from Customer

--4. First_name starting with G and city = san jose
-- wildcards, logical, 2 condition

--No record of g so as an alternate m is used

Select * from Customer
where First_name like 'g%' and City ='San Jose'

--5. Select those records where Email has only ‘gmail’.

Select * from Customer
where Email like '%gmail%'

--6. Select those records where the ‘last_name’ doesn't end with “A”.

Select * from Customer
where Last_name not like '%a'

--Reference (a before the last letter from first_name)

Select * from Customer
where First_name like '%a_'

--Module 3

--1. Create an ‘Orders’ table which comprises of these columns: 
--Order_id int,Order_date date, Amount money, Customer_id int. 

create table Orders (Order_id int, Order_date date, Amount money, Customer_id int)

--2. Insert 5 new records.
insert into Orders (order_id, order_date, amount, customer_id)
values (101, '2021-07-04',2450, 1),
		(201, '2018-09-13',5670,3),
		(301,'2020-02-02',2000,5),
		(401,'2019-01-05',3500,6),
		(501,'2021-06-03',300,7)

