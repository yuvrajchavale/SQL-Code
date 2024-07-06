
--merge is use to insert and update
create table emp_t (
ID int,
Name varchar(50),
Age int);

insert into emp_t(ID,Name,Age)
values
(1,'Jhon',30),
(2,'Jane',28),
(3,'Michael',25);

create table emp_s
(ID int,
Name varchar (50),
Age int);

insert into emp_s(ID,Name,Age)
values
(2,'Jessica',29),
(4,'David',32);

select * from emp_t
select * from emp_s

--Declaration
merge into emp_t as target
using emp_s as source

--Then Find common column to Merge
on target.id=source.id

--matched update

when matched then
update set
target.name=source.name,
target.age=source.age

--not match then insert

when not matched by target then
insert(id,name,age)
values(source.id,source.name,source.age);


create table Taken
(ID int Primary key,
Name varchar (50),
Age int,
height float)

insert into Taken(ID,Name,Age,height)
values
(1,'Ajay',23,6.2),
(2,'Anjali',25,5.3),
(3,'Amit',26,5.9),
(4,'Nitesh',26,6.1),
(5,'Manish',26,6.9)

create table Given
(ID int Primary key,
Name varchar (50),
Age int,
height float)

insert into Given(ID,Name,Age,height)
values
(1,'Rakesh',24,6.7),
(3,'Era',25,6.1),
(5,'Jitesh',24,6.2)

select* from Taken
select* from Given

--Declartion
merge into Taken as target
using Given as source

--common column

on target.id =source.id

--matched
when matched then
update set
target.name=source.name,
target.Age=source.Age,
target.height=source.height

when not matched by target then
insert(ID,Name,Age,height)
values(source.id,source.Age,source.Name,source.height);