use Store

select *from store_details_1
where sales>70 and city='Delhi' and order_no>254
select *from store_details_1


select *from store_details_2
where sales>70 or city='Delhi' or order_no>300
select *from store_details_2

select *from store_details_2
where sales>120 or (city='delhi' and order_no>300)
select *from store_details_2

select * from store_details_1
where not sales < 70
--Union eliminate duplicate values and arrange it in order 
select* from store_details_1
union
select *from store_details_2

--Union all fetch whole data with duplicate values and arrage it as per tables
select* from store_details_1
union all
select *from store_details_2

--Intersect shows the duplicate values in the tables  
select * from store_details_1
intersect
select *from store_details_2	

--Except shows the unique values in the left table
select * from store_details_2
Except
select *from store_details_1

--Like operator to see the specific line the data 
select * from store_details_1
where store_name like '%c%%%%'and city like '%e%'
select *from store_details_2
where store_name like '%n%%%%'and city like '%e%'

--Clauses start from Here
Select SalesOrderDetailID,ProductID,amount from sales
order by ProductID asc

--request:give me the minimum amout for each ProductID
select productid,min(amount)
from sales
group by ProductID

--request:find the max amount for the product id where IDS are not repeated and amount >100 also sort them my product ID??
-- Where clause only use after select statement
--having clause only use with group by clause
--one aggregate funtion is mandatory
--order by always be at last
--having clause use after group byy

Select SalesOrderDetailID,ProductID,amount from sales
order by ProductID asc

select productid,max(amount)
from sales
where amount>40
group by ProductID
having max (amount)>50
order by ProductID desc

select * from sales
select distinct ProductId,OrderQty,MAX(amount)
from sales
where ProductID>775
group by ProductID,OrderQty
order by ProductID

