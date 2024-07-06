/*
 It is a virtual table, which is created according to the result set of an SQL query. However, it looks similar to an actual table containing rows and columns. Therefore, we can say that its contents are based on the base table. It is operated similarly to the base table but does not contain any data of its own. Its name is always unique, like tables. The views differ from tables as they are definitions that are created on top of other tables (or views). If any changes occur in the underlying table, the same changes reflected in the views also.

use:
The primary use of view in SQL Server is to implement the security mechanism. It prevents users from seeing specific columns and rows from tables. It only shows the data returned by the query that was declared when the view was created. The rest of the information is completely hidden from the end-user.
*/
USE [test_1]
GO

create view [dbo].[new_price_view]
as
select *,(unitprice*1.5) as [new price] from sales
GO


select * from student a
join fee b
on a.admission_no=b.admission_no