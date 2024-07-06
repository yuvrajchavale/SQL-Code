---Joins---
---First Table Always be Left Table
---Second Table Always be RIght Table
create table Employees
(Empid int primary key,
E_name varchar(20),
L_name varchar(20),
Departmentid int
)
insert into Employees(Empid,E_name,L_name,Departmentid)
values
(1,'Rakesh', 'Zade',2),
(2,'Amit', 'Zende',3),
(3,'Raksha','Pote',5),
(4,'Jiya','Potedukhe',1),
(5,'Nitesh','Pidurkar',3),
(6,'Raju','Pande',4)

create table departments
(Departmentid int primary key,
DepartmentName varchar(30))

insert into departments(Departmentid,DepartmentName)
Values
(1,'Software Developer'),
(2,'Testing Engg.'),
(3,'Human REsources'),
(4,'Sales'),
(5,'Marketing')

select * from Employees
Select * from departments

--Inner Join
--Its Gives data from same data 

select Empid,E_name,L_name,DepartmentName
from Employees
inner join departments
on Employees.Departmentid=departments.Departmentid

insert into Employees(Empid,E_name,L_name,Departmentid)
values
(7,'Vijay', 'Jha',6)

insert into departments(Departmentid,DepartmentName)
Values
(6,'Big Data')
insert into Employees(Empid,E_name,L_name,Departmentid)
values
(8,'Daya', 'Dobal',7)

---Left Join---
--it gives whole data from left side which matched or non matched

insert into departments(Departmentid,DepartmentName)
Values
(8,'Devops Dept.')
select *from departments
select Empid,E_name,L_name,DepartmentName
from Employees
left join departments
on Employees.Departmentid=departments.Departmentid
select *from departments


---Right Join---
--it gives data which right side match and non matched data
select Empid,E_name,L_name,DepartmentName
from Employees
Right join departments
on Employees.Departmentid=departments.Departmentid

--Full outer Join---
-- it combine everything & Gives Whole Data


select Empid,E_name,L_name,DepartmentName
from Employees
Full outer join departments
on Employees.Departmentid=departments.Departmentid

---- We can join unlimiteds tables here example to join two tables


create table address(empid int primary key, City varchar(20))
insert into address(empid,City)
values
(1,'Nagpur'),
(2,'Chandrapur'),
(3,'Pune'),
(4,'Mumbai'),
(5,'Hydrabad')

create table Company(empid int primary key,  C_Name varchar(20))
insert into Company(empid,C_Name)
values
(1,'Capgemini'),
(2,'Tcs'),
(3,'Mahindra'),
(4,'Microsoft'),
(5,'Hydra')



select * from address
select * from Employees

select e.Empid,E_name,L_name,City,DepartmentName,C_Name
from Employees e
inner join address a
on e.Empid=a.empid

inner join departments d
on e.Departmentid=d.Departmentid

inner join Company c
on e.Empid=c.empid

update Employees
set E_name= 'Dhaniya'
where E_name Like'%ji%%'

select * from Employees

--==============================================================-----
 --find teh maximum amount for the firm_ids
 --where firm_ids are not repeated and amount>2000 also sort firm_id in desc?
 --id,amount

 select * from Firm
 select *from Audience_Firm

 select id,solicitation_name from Firm
 select id,amount from Audience_Firm


 select a.id,max(b.amount) as'max amount'
 from firm a
 join Audience_Firm b
 on a.id=b.id
-- where amount>2000 
--optional working same as having here
 group by a.id
having max(b.amount)>2000
 order by a.id desc







