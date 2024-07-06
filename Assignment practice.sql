--Arrange Data In Decreasing order

select* from Orders
order by amount desc;


-- Create two tables with same parameters

Create table Employee_details1
(Emp_id int,
 Emp_name varchar(20),
 Emp_salary int
 )
Create table Employee_details2
(Emp_id int,
 Emp_name varchar(20),
 Emp_salary int
 )

select * from Employee_details1
select * from Employee_details2

insert into Employee_details1
(Emp_id, 
 Emp_name,
 Emp_salary
 )
 values
 (5,'Joe',180000),
 (2,'Don',34000),
  (3,'Gon',54000)
 insert into Employee_details2
(Emp_id, 
 Emp_name,
 Emp_salary
 )
 values
 (3,'Gon',54000),
 (4,'Ronaldino',79000),
 (6,'Nana',98000),
 (7,'Donald',94000)


--Apply Union Operator On Two tables

select * from Employee_details1
union
select * from Employee_details2

--Apply Intersect Operator on tables 

select * from Employee_details1
Intersect
select * from Employee_details2


--Apply Except Operator on tables

select * from Employee_details1
Except
select * from Employee_details2

