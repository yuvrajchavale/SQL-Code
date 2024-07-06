USE Store
create table Employeess(
name varchar (45) not null,
occupation varchar(35) not null,
working_date date,
working_hours varchar(10),
salary int)

insert into Employeess 
values
('Jolly Evans', 'HR', '2020-10-04', 9, 25000),    
('Brayden Simmons', 'Engineer', '2020-10-04', 12, 65000),    
('Rose Huges', 'Writer', '2020-10-04', 13, 35000),    
('Laura Paul', 'Manager', '2020-10-04', 10, 45000),    
('Diego Simmons', 'Teacher', '2020-10-04', 12, 30000),    
('Antonio Bennet', 'Writer', '2020-10-04', 13, 35000)


--Aggregate function--
--1.Count--
--This function returns the total number of rows,including rows with null
--it ignores null values
select *from Employeess

select salary, Count(name) 
from Employeess
where working_hours between 10 and 12
group by salary
having salary<=40000;

select occupation,count(name) as "te"
from Employeess
group by occupation
having COUNT(name)>1
order by COUNT(name);

--Creation of temp table & Data inserting from table
select * into #temp
from Employeess
select * from #temp1

update #temp
set working_date=null,working_hours=null,salary=null;

select working_date,working_hours,salary into #temp1
from #temp;

select count (*) from #temp1;

---# String Function #---
--1.Length Function 
--Spaces at the end not counted
--inbetween or starting space will take

select len('Why')

select *,len(city) as lenght_city from store_details_1

--Concat function

select *,CONCAT(store_location,' ',city) as store_address
from store_details_1


----Left Trim
--it removes leading spaces from the left side of word
 select LTRIM('     Bye Bye')

----Right Trim
--it removes Ending spaces from the Right side of word
 select RTRIM('Bye Bye          ')

---- Trim
--it removes leading & Ending spaces from the word 
 select TRIM('     Bye Bye    ')

 --Replace 
 --we can use first two letters also to replace the word

 select * from store_details_1
 select *,REPLACE(store_location,'delhi','Canaught Place') as New1,REPLACE(city,'delhi','Sambhaji Nagar')as New2
 from store_details_1

--Reverse
select*,REVERSE(city) as revv from store_details_1
where city='delhi';

--Substring
--if i want inbetween world then put the letter number from 1 to that letter
--then count that letter first and follow the count  
--first one is normal query
 select*, SUBSTRING(store_name,1,9) from store_details_1
 where store_name='CVS Health Corporation'
 --see it gives chavale also
select substring('yuvraj_nlkanth_chavale',8,14)
--so if i want only nilkanth just put 8 & then count it from 1
select substring('yuvraj_nlkanth_chavale',8,7)

--Ascii not much important for us
Select ascii('o') 

--Lower & Upper
select *,upper(city),upper(store_name) from store_details_1
where len(city)=5; 

select lower('HELLOE')

---Int to char conversion using cast function
---to get first two values from sales column
select SUBSTRING(cast(sales as char),1,2) from store_details_1
--- # MathMatical Function # ---

--Ceiling
--this function returns the smallest integer greater than ,or equal to,the specified numeric expression

select ceiling (2435.5)
--result 2436 not smaller and grater than 2435.5

--floor
--returns the largest integer less than or equal to the specified numeric expression
select FLOOR(2435.5)
--result 2435 greater and less than 2435.5

--round 
--returns a numeric value,rounded to the specified length or pricision

select round (2435.512,2)
--result : 2435.510 after 2 decimal it round of the number


--# DateTime Function #--

--1.Day(): Pull out the day by using this function

use Store

select * from sales

select modifiedDate ,Day(modifiedDate) as Date_Day from sales

--2.Year(): Pull out the Year by using this function

select modifiedDate ,Year(modifiedDate) as Date_Day from sales

--3.MOnth(): Pull out the Month by using this function

select modifiedDate ,Month(modifiedDate) as Date_Day from sales

--4.DateAdd(): Add date,month,year by using function
--we can add or subtract the date, year, month

select ModifiedDate, DATEADD(YEAR,+3,modifiedDate) as modifiedyear from sales

select ModifiedDate, DATEADD(DAY,+2,modifiedDate) as modifiedDay from sales

select ModifiedDate, DATEADD(Month,+2,modifiedDate) as modifiedMonth from sales

select ModifiedDate,DATEADD(YEAR,+3,modifiedDate) as modifiedyear, DATEADD(Month,+2,modifiedDate) as modifiedMonth, DATEADD(DAY,+2,modifiedDate) as modifiedDay from sales

--Datediff(): Returns a differnce in a date part between two dates
--getdate gives todays data thats y we put getdate
--by using this we can get day, age ,month from the start
--see it gives days-months-year how many passed from given date vs todays date
select DATEDIFF(DAY,'2000-05-31 13:07:36.617',GETDATE())
select DATEDIFF(MONTH,'2000-05-31 13:07:36.617',GETDATE())
select DATEDIFF(YEAR,'2000-05-31 13:07:36.617',GETDATE())


-- Format Give the Date format as per our convenience
--format's are case sensitive so please put properly captital & small letter Properly
--lots of formats availabe

select GETDATE() --2023-09-06 13:19:43.513

select FORMAT(GETDATE(),'dd-MM-yyyy')
select FORMAT(GETDATE(),'dddd-MMMM-yyyy')
select FORMAT(GETDATE(),'MMMM-dddd-yyyy')
select FORMAT(GETDATE(),'dd-MMMM-yyyy')



select FORMAT(modifieddate,'dd-MM-yyyy'),
FORMAT(modifieddate,'dddd-MMMM-yyyy'),
FORMAT(modifieddate,'MMMM-dddd-yyyy'),
FORMAT(modifieddate,'dd-MMMM-yyyy')
from sales
----------------------------------------------------------------
------------# Table Creation For Windows Function #-------------
create table examresult(
StudentName varchar(20),
[Subject] varchar(20),
Marks int 
)
insert into examresult(StudentName,[Subject],Marks)
values
      ('Lily','Maths',65),
	  ('Lily','Science',80),
	  ('Lily','English',70),
	  ('Isabella','Maths',50),
	  ('Isabella','Science',70),
	  ('Isabella','English',90),
	  ('Olivia','Maths',55),
	  ('Olivia','Science',80),
	  ('Olivia','English',80)
	  update examresult
	  set marks=80
	  where StudentName='Lily' And Marks=89;
	  Select * from examresult
	  select marks from examresult order by marks desc;
----------------------------------------------------------------

---Windows Functions---

---Rank Functions (T-SQL)---

---Ranking functions returns a ranking value for each row in partition .
--Depending on the functions that is used ,some rows might receivethe same value as other rows
--there are four types of ranking functions
--1.Rank,2.Dense Rank,3.Ntile(NOT Important),4.Row Number

--1.Rank Function
--In Rank Function after duplicate data the rank will ignore the first it takes second change like, 1,2,2,4 if not duplicate it will continue  1,2,2,4,5,6  
--Skipping next Rank for duplicate value
--Syntax : rank()over()

select marks,rank()over(order by marks desc) as 'R' from examresult


---2.Dense Rank
-- In Dense Rank Function it's not skipping next rank for  duplicates values 
-- but after that it will continue like 1,2,2,3,4,5,5,6  
--Syntax : dense_rank()over()

select marks,dense_rank()over(order by marks desc) as 'DR' from examresult


---3.Row Number 
---In Row Its takes the rank serial wise like 1,2,3,4,5,6,7
-----Syntax : row_number()over()

select marks,row_number()over(order by marks desc) as 'RN' from examresult


--4.ntile(Not Much Important)
--it divide into sets

select marks,ntile(3)over(order by marks desc) as 'Ntile' from examresult


----Whole row functions in one---

select marks,
rank()over(order by marks desc) as 'R' ,
dense_rank()over(order by marks desc) as 'DR' ,
row_number()over(order by marks desc) as 'RN' ,
ntile(3)over(order by marks desc) as 'Ntile' from examresult

---- Some Use cases---
select *,rank()over(partition by subject order by marks desc ) as Ranks,
DENSE_RANK()over(partition by subject order by marks desc) as DenseRank, 
row_number()over(partition by subject order by marks desc ) as RowNumber,
ntile(4)over (partition by subject order by marks desc) as 'Ntile'
from examresult;

-- Remove duplicate values using row number function
select * from Audience_Firm

select solicitation_audience_firm_ID,id into #New from Audience_Firm

select*from #New
order by solicitation_audience_firm_ID

select *,ROW_NUMBER()over(partition by id order by id asc) as 'Rank'
into #RankTemp7
from #New
order by solicitation_audience_firm_ID
select * from audience_firm

Select solicitation_audience_firm_ID from #RankTemp7
where [Rank]>1
order by solicitation_audience_firm_ID

Delete from #New
where solicitation_audience_firm_ID in(Select solicitation_audience_firm_ID from #RankTemp7
where [Rank]>1)
select * from #New order by solicitation_audience_firm_ID
--------------------------------------------------------
--Step By Step Delete Duplicate Values Process

--1.insert Whole Audience_Firm Table Data into Temporary #FirstRankTB  Table
select* into #FirstRankTB  from Audience_Firm 

---Select Solicitation_AUdience_Firm_ID, ID from #FirstRankTB to Implment The Rank Function and insert these data in TEMporary #SecondRankTB table

select solicitation_audience_firm_ID,Id into #SecondRankTB
from #FirstRankTB

--Now Implement Row_number window function
select* from #SecondRankTB
order by solicitation_audience_firm_ID
select *,ROW_NUMBER()over(partition by id order by id) as 'RankTB'
Into #ThirdRankTB ---Thid temp table is used to delete the records 
from #SecondRankTB

select * from #ThirdRankTB --"*" put to see all records
where RankTB>1
order by solicitation_audience_firm_ID; --This Query shows the duplicte values which we want delete 

-----Now Delete the Duplicate Record
Delete from #FirstRankTB 
where solicitation_audience_firm_ID in (select solicitation_audience_firm_ID  from #ThirdRankTB
where RankTB>1);
--use IN operator to delete multiple records
--we use solicitation column to see Rank 

Select* from #FirstRankTB
order by solicitation_audience_firm_ID;
-- arranging it in ascending
----------------------------------------------------------------------------------------------------------------------------------------------

-----------# User Defined Function #-------------
--1. Scaler Valued
--2. Table Valued

Select * from sales
select *,amount * 12 as 'Whole_Amount' from sales -- normal calculation

--1.Scaler Valued Function

 -- define

create function dollar(@rupees float)
returns float --return value
as
begin --calculation
return(@rupees/84)
end

select* ,dbo.dollar(amount) as"Dollar" from sales

--Create a user-defined function which will multiply the given number with 10

create  function Multipy10(@number int)
returns int
as 
begin
return(@number * 10)
end

select *,dbo.Multiply10(amount) as "10" from Orders
select dbo.Multipy10(12) as "10X" 

----# Table Valued #-----

alter function dbo.City(@city varchar(25))--  define
returns table
as 
return
select * from student where  city= @city ;

select * from City('texas')
select * from student

-----------------------------------
---to find greater amount what we gave than
--This is the Function

create function dbo.GreateCheck(@amount int)
returns table
as 
return
select * from Orders where amount > @amount;
---Input gives
select * from dbo.GreateCheck(80000)
select * from Orders
--------------------------------------

--Schemaa--
--we can give acess as per convenience
--for security Purpose
--its's Database object.dbo
--create schema to store tables name
--i alreadry have sales1 table so it gives error if i create again it in store database
--if I create loan schema and store it in loan it will created
create table sales1(id int)
--This Msg Will come
--Msg 2714, Level 16, State 6, Line 383
--There is already an object named 'sales1' in the database.
--Schema creation to same table name
create schema loan 
create table loan.sales1(id int)
--see now this table will create

----------Pivot & Unpivot---------------
--Pivot : Command Convert columns into rows
--Syntex bit complex
Select * from examresult
--This Query only For the See columns
select StudentName,sum(marks) as "Total Marks"
from examresult
Group by StudentName

--- Syntex Divided into 3 Parts
--1.Select the how to see data with columns
select 'Total Marks'as StudentName , Isabella,Lily,Olivia
--2.from which table and columns
from
(
select StudentName,Marks from examresult
) as tabletobepivot
--Calculations
pivot
(
sum(Marks)
for StudentName  in (Isabella,Lily,Olivia)
) as PivotTable

---Pivot revision--
use Store
select * from SalesTerritory

-- this query only for to see table to gone pivot

select [group],sum(salesytd) totalsales
---putting this table data into temporary table
into #pivottemp
from SalesTerritory
group by [group]

select * from #pivottemp 

--selecting which columns to be pivot

select 'Totalsales' as [group],[Europe],[North America],[Pacific] 
into #unpivottempo
--saving in unpivottemp table to use for unpivot
from
--Main table to going pivot
(
 select salesytd,[group] from SalesTerritory
) as tabletopivot

--Calculations in pivot table 

pivot
(
sum(salesytd)
for[group] in([Europe],[North America],[Pacific] )
) as pivottable


---Unpivot--
---just back to column form

select * from #unpivottempo

select [group],sales
from
(
select [Europe],[North America],[Pacific] from
#unpivottempo
) as MainTB

unpivot
(
sales for [group]
in([Europe],[North America],[Pacific])
) as UnpivotTB

----Stuff---
--To Replace World Inbetween
--Syntax stuff('Main Word',starting count from main word to replace from ,second word lenght,'2nd Word')
--I want 'hello wosql' from 'hello world'
select stuff('hello world',9,3,'sql')