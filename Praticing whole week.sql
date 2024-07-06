Create database Dhirumonchik
use Dhirumonchik
--this command shows all the Databases in system
SELECT name FROM master.sys.databases ORDER BY name;

-- To Drop the Database
Create database Dada
Create database Dadu

drop database Dada,Dadu
--================================------------

use Dhirumonchik
--too create database

Create table Elvish_Support
(ID int,
 Name Varchar (50),
 Subscribers_Million int,
 Insta_Follow int,
 Location varchar(50)
)

Create table Fukra_Support
(ID int,
 Name Varchar (50),
 Subscribers_Million int,
 Insta_Follow int,
 Location varchar(50)
)
Create table arry_Support
(ID int,
 Name Varchar (50),
 Subscribers_Million int,
 Insta_Follow int,
 Location varchar(50)
)
--To Drop the Table
Drop table arry_Support

--Insert Values in the Table

Insert into Elvish_Support(ID,Name,Subscribers_Million,Insta_Follow,Location) 
values
(1,'Kataria',1,23,'Harayana'),
(2,'UK07Rider',5,50,'Uttarakhand'),
(3,'Jatt Prabjyot',8,4,'Punjab'),
(4,'Prince Narula',3,2,'Delhi'),
(5,'Laksh Choudhary',5,34,'Delhi')

Insert into Fukra_Support(ID,Name,Subscribers_Million,Insta_Follow,Location) 
values
(1,'Dhirumochik',3,33,'Delhi'),
(2,'Sourav Joshi',6,40,'Himachal'),
(3,'BBRT',2,38,'Rathi'),
(4,'Natula',5,45,'Delhi')

-- to check tables 
select * from Elvish_Support
Select *from Fukra_Support

--- Update is dml command and its use to update the particular column value
update Elvish_Support
set Insta_Follow= 30
where Insta_Follow = 2

--Delete Data using delete command

delete from Elvish_Support
where ID=5

----==--------
--this command is use to delete top records
Delete top(2)
from  Fukra_Support
where insta_Follow >30

----Alter Command is use to add new columns or drops multiple columns

Alter table Elvish_Support Add Phone_Number varchar(10);
Alter table Elvish_Support Add SUpport varchar(200);
Alter table Fukra_Support Add Phone_Number varchar(10);
update Elvish_Support
set Phone_Number = '9834464435'
where ID=1

----Drop Column using Alter command 

--Single Column Drop
Alter table Elvish_Support
Drop Column Phone_Number

---Multi Columns Drop
Alter table Elvish_Support
Drop Column Phone_Number,SUpport

select * from Elvish_Support

--Modify Data Type using Alter Command
Alter table Elvish_Support Alter COlumn Insta_Follow varchar(4)
--Too check datatype changed or not just go 
--->Object Explorer-->Database-->Database Creted-->Table-->right click-->click on design



--Add Constraint using Alter

ALTER TABLE Elvish_Support alter column ID int NOT NULL

Alter table Elvish_Support
ADD CONSTRAINT prime PRIMARY KEY (ID)

--Use delete command to delete row
insert into Elvish_Support (ID,Name)
values(1,'Zudio')

delete from Elvish_Support where ID=6

--remove constraint from column
--Don't forget the Prime what we gave in before query
alter table Elvish_Support Drop constraint prime;

-----Funtions
--->MIN Function
--The MIN() function ignores NULL values.

select min(insta_follow)as "MIN.INSTA.FOLLOW" from Elvish_Support;
-----------------------------===
--Minimum Admission showing with age
select * from Student

select admission_no, age
from Student
where admission_no =(select min (admission_no) as "Minimum Admissin"
from Student
);
------------------------------------
--finding MInimum amount where lots of same id's so we need to use group by 

select id,amount from Audience_Firm

select id, min(amount) as "Minimum Amount"
from Audience_Firm
Group by id;
---------------------------------------------------
--This clause must be used with the GROUP BY clause to filter the grouped 
--records from the table. The below statement will display the product 
--name with a minimum quantity greater than 200.
-->  here we fix zero coming problems using having clause

select id ,min(amount) as "Minimum Amount"
from Audience_Firm
where amount>100
--We can use where nd having clause here both are working
Group by id
having min(amount)>100
----------------------------------------------------------------------------
--using Distinct to remove duplicate values
select id ,min(Distinct Amount) as "Minimum Amount"
from Audience_Firm
where id>136
Group by id;
------------------------------------------------------------------------
----MAX Function---->
select  * from Audience_Firm
-- simple sort method
select max(amount) as "Maximum Amount" from Audience_Firm
--Get the id and Audience with maxed amount (Used Subquery)
select id,amount,audience
from Audience_Firm
Where amount= (select max(amount) as "MAXED AMOUNT" from Audience_Firm);
--Take out id wise max amount
select id , max(amount) as "MAXED PRICE"
FROM Audience_Firm
where amount >0
--to avoid zero value
Group by id
Having max(amount)>0
--to avoid zero value we Greater than zero 
order by id;

