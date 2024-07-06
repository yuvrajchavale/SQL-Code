---Important Type--
--Enable the Actual Excution Plan(ctrl + m) too see index scan,index seek,table scan
--- Indexing --- 
--1. Only one clustered index per table, where as you can have more than one non clustered index
--2. Clustered index is faster than a non clustered index, because, the clustered index has to refer back to the table, if the selected column is not present in the index.
--3. Clustered index determines the storage order of rows in the table, and hence doesn't require additional disk space, but where as a Non Clustered index is stored separately from the table, additional storage space is required.
---table scan:scan whole table without any indexing, Indexing:Not Applied || Condition Applied 
---index seek:scan the table with any conditon and anyone indexing will available. Indexing Applied || condition:Applied on clustor Index Column then it will index seek orelse it's index scan
---index scan:Scaning whole table with indexing || indexing:Applied || conditions: Applied on non clustor column it will be index scan
-- An INDEX can be defined  as a mechanism for providing fast acess to table rows and for enforcing constraint.
----index seek only for clustored column
/*
differences b/w clustered n nonclustered

1. Only one clustered index per table, where as you can have more than one non clustered index
2. Clustered index is faster than a non clustered index, because, the clustered index has to refer back to the table, if the selected column is not present in the index.
3. Clustered index determines the storage order of rows in the table, and hence doesn't require additional disk space, but where as a Non Clustered index is stored separately from the table, additional storage space is required.
*/
create table student_abc(
ID int,
admission_no varchar(45) not null,
first_name varchar(45) not null,
last_name varchar(45) not null,
age int null,
city varchar(45) not null,
)

insert into student_abc(ID,admission_no,first_name,last_name,age,city)
values 
(3,'5112','Rose','Hugs',16,'Florida'),
(1,'6113','Marielia','Simoons',15,'Arizone'),
(2,'7555','Antonio','Butler',15,'New York')

select * from student_abc where id=2
--this query gives table scan becoz it search in whole table
--and data is not in order also becoz not providing primary key 
--so now droping table and applying primary key
drop table student_abc

---1.Clustard Indexing
--only one clustored index possible
--we can achieve clustored index using primary key also.
--it determined the physical order of data in the table.
--index seek only for clustored column

--Now Primary key applied so data wil be sequence
select * from student_abc where ID=2;
--Now Table gives clustored index seek bcoz we applied primary key 

--We have syntax to check the index on which table
sp_helpindex student_abc;

--To create clustored index we have special syntax also to do this i drop the table
drop table student_abc

--I have create same table without primary key to apply clustored index
select * from student_abc
--data not in format
--ix_id it jst a naming don't confused

Create clustered index ix_id
on student_abc(id)

--Now Data in format
select * from student_abc 

--Primary key not allowed duplicate value on that column but clustor index allows duplicate values on that column

--2.Non Clustard Indexing

--we can give more than two non clusterd index upto 999.
--we have create non cluster index on first name bcoz id already have cluster index.

Create nonclustered index nix_id
on student_abc(first_name)

--this index only create to drop
Create nonclustered index lnix_id
on student_abc(last_name)


--now we have one clsuter and 1 non cluster index to check cmd
sp_helpindex student_abc;

select* from student_abc where id=3
--this should be index seek because we use clustor column

select* from student_abc where first_name='Rose'
--this should be index scan because we use nonclustor column

select* from student_abc 
--this should be index scan because we are not use nonclustor column and cluster column but we have indexing columns

select* from Customer
--this should be table scan because we are not applied any indexing

---Drop index clustor & non clustor

drop index lnix_id on student_abc
-- index removed
sp_helpindex student_abc;

-- Unique constraint is come in non clustor because it contains null value where we can't predict the when null wil come