/*Functions in SQL Server are the database objects that contains a set of SQL statements to perform a specific task.

A function accepts input parameters, perform actions, and then return the result. 
single value or a table. 

We can build functions one time and can use them in multiple locations based on our needs. 

SQL Server does not allow to use of the functions for inserting, deleting, or updating records in the database tables.
*/
--len()
select * from store_details
select *,len(city) from store_details

select len('12  34')

--concat
select *,concat(store_location,city) from store_details
select *,concat(store_location,'',city) from store_details
select *,concat_WS(store_location,'',city) from store_details

--trim
select ltrim(' 12  34 ')
'12  34 '

select rtrim(' 12  34 ')
' 12  34'

select * from store_details

select *,replace(city,'pune','delhi')
from store_details
select *,reverse(city)
from store_details

select * from store_details
select *,substring(city,1,3) from store_details

select SUBSTRING('helloworldbye',6,5)
select cast(SUBSTRING(sales,1,2) as char) from store_details_1
select ascii(substring(cast(sales as char),2,1)) from store_details_1

--ASCII, in full American Standard Code for Information Interchange, a standard data-encoding format for electronic communication between computers.
--
select *,upper(city)
from store_details

select *,lower(city)
from store_details

--math function
select * from store_details
select count(*)
from store_details

select avg(sales) from store_details
select log10(sales) from store_details

select square(2)

select abs(-11)
select abs(1)
select abs(1.3)

select 
amount,ceiling(amount),floor(amount),round(amount,4)
from sales

select power(4,2)
