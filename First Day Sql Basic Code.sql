create database shop

use shop

create table Shop_Details
(
Shop_no int,
Shope_name char(100),
Owner_Details char(100),
City char(20),
Sales int,
Pincode int

)
-- To show Table
select * from Shop_Details

-- single data adding
insert into Shop_Details
values(3,'MBA Chaiwale','Prafule Biloria','Mumbai',1820,555307) 

-- mltiple data adding
insert into Shop_Details
values(3,'MBA Chaiwale','Prafule Biloria','Mumbai',1820,555307),
(4,'Joshi Wadewale','Joshi','Bandra',1120,955307),
(5,'BiLoria Estate','Biloria','Pune',1220,25307),
(6,'Amrutulya',' Mahajan','Pune',11820,45307),
(7,'Neeta Travels','Neeta Thakre','New-Mumbai',1520,235307),
(8,'Patilwada','Patil And Sons','Pune',1810,52307)

select @@VERSION
-- For multiple Change Shift + Alt + Down Arrow