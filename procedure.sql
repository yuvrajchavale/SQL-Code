/*
SQL Server stored procedures are used to group one or more Transact-SQL statements into logical units. The stored procedure is stored as a named object in the SQL Server Database Server.
*/

select *,(unitprice*1.50) as [new price] from sales

declare @unitprice_incre_rate float
set @unitprice_incre_rate = 1.50
select *,(unitprice*@unitprice_incre_rate) as [new price] from sales

create procedure price @unitprice_incre_rate float
as
select *,(unitprice*@unitprice_incre_rate) as [new price] from sales

exec price 1.50

------trans

select * from student

begin tran
update student
set age=25
where id=7
rollback
commit

--savepoint
begin transaction 
update student
set age=20
where id=7
Save transaction First_Record
update student
set age=10
where id=4
Save transaction second_Record
update student
set age=21
where id=1
rollback transaction First_Record
rollback transaction second_Record
rollback
commit
Select * from student