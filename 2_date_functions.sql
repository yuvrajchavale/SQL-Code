use test_1
select * from sales

select *,day(modifieddate) from sales
select *,year(modifieddate) from sales
select *,month(modifieddate) from sales
select *,dateadd(year,+5,modifieddate) from sales
select *,datediff(year,modifieddate,getdate()) from sales
select *,getdate() as [current] from sales
select format(getdate(),'dd-MM-yyyy')
select format(getdate(),'dddd-MMMM-yyyy')
select format(getdate(),'MMMM-dddd-yyyy')
select format(getdate(),'dd-MMM-yyyy')
select datepart(qq,getdate())
select datepart(dy,getdate())
select datepart(yy,getdate())

select format(modifieddate,'dd-MM-yyyy')
,format(modifieddate,'dddd-MMMM-yyyy')
,format(modifieddate,'MMMM-dddd-yyyy')
,format(modifieddate,'dd-MMM-yyyy') from sales