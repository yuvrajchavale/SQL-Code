



-- 1. Find out the selling cost average for packages developed in Pascal

select AVG(SCOST) as "Avg Selling Cost" 
from Software
where DEVELOPIN = 'PASCAL'

-- 2. Display the names and ages of all programmers.

-- 3. Display the names of those who have done the DAP Course

select Pname,Course 
from Studies
where COURSE = 'DAP'

-- 4. Display the names and date of birth of all programmers born in January.
Select PNAME, DOB 
From Programmer
Where Month(DOB) = 01

-- 5. What is the highest number of copies sold  by a packages ?

Select Max(SOLD) As "Highest Selling Copies"
from Software



-- 6. Display lowest course fee.


-- 10. How many programmers studied at Sabhari?

Select Count(PNAME) as "Count of Sabhari Students " From Studies
where INSTITUTE = 'SABHARI'

-- 11. Display details of packages whose sales crossed the 2000 mark.
 Select * from Software
 where (SCOST) > 2000;

 -- 12. Display the details of packages for which development costs have been recovered.
 Select* from Software
 Where (SCOST*SOLD) > DCOST;

 -- 13. What is the cost of the costliest software development in Basic?
 
 Select MAX(DCOST) AS "COSTLIEST DEVELOPEMENT" from Software
 WHERE DEVELOPIN = 'BASIC'
 
-- 14. How many packages have been developed in dBase?
 
 SELECT COUNT(TITLE) 'SOFTWARE IN DBASE' FROM Software
 WHERE DEVELOPIN = 'DBASE'

-- 15. How many programmers studied in Pragathi?
 
 SELECT COUNT(PNAME) 'STUDENTS FROM Pragathi' FROM Studies
 WHERE INSTITUTE = 'Pragathi'

-- 16. How many programmers paid 5000 to 10000 for their course?

 SELECT * FROM Studies
 WHERE COURSE_FEE BETWEEN 5000 AND 10000

-- 17. What is the average course fee?
 SELECT AVG(COURSE_FEE) AS "AVG COURSE FEE" FROM Studies

-- 18. Display the details of the programmers knowing C.
 SELECT * FROM Programmer
 WHERE 'C'= PROF1 OR 'C'=PROF2

-- 19. How many programmers know either COBOL or Pascal?
 SELECT COUNT(PNAME) "COBAL & PASKAL PROGRAMERS" FROM Programmer
 WHERE PROF1 IN ('COBOL','PASCAL') OR PROF2 IN ('COBOL','PASCAL') 

-- 20. How many programmers don�t know Pascal and C?
 WHERE PROF1 NOT IN ('C','PASCAL') AND PROF2 NOT IN ('C','PASCAL') 

-- 21. How old is the oldest male programmer?
 
 order by PNAME desc

 -- 24. Who are the programmers who celebrate their birthdays during the current month?

 SELECT * FROM Programmer WHERE MONTH(DOB) = MONTH(getdate())

 -- 25. How many female programmers are there?
 
 select count(PNAME) as 'Female Programmers'from Programmer
 where gender = 'F'
 
 -- 26. What are the languages studied by male programmers?

 select PNAME, Prof1, Prof2 from Programmer
 where GENDER = 'M';

-- 27. What is the average salary?
 SELECT AVG(SALARY) AS "AVG SALARY" FROM Programmer

-- 28. How many people draw a salary between 2000 to 4000?
 
 SELECT COUNT(PNAME) AS "2K TO 4K SALARY EMP" FROM Programmer
 WHERE SALARY BETWEEN 2000 AND 4000

-- 29. Display the details of those who don�t know Clipper, COBOL or Pascal.

 SELECT * FROM Programmer
 WHERE PROF1 NOT IN ('CLIPPER','COBOL','PASCAL') AND PROF2 NOT IN ('CLIPPER','COBOL','PASCAL')

-- 30. Display the cost of packages developed by each programmer
 
 SELECT PNAME, SUM(DCOST) AS "DEVELOPING COST"
 FROM SOFTWARE 
 GROUP BY PNAME

-- 31. Display the sales value of the packages developed by each programmer.
 SELECT PNAME , SUM(SCOST) AS "SALES DEVELOPED"
 FROM Software  
 GROUP BY PNAME

 -- 32. Display the number of packages sold by each programmer.

 SELECT PNAME , SUM(SOLD) AS "PACKAGE SOLD"
 FROM Software  
 GROUP BY PNAME

 -- 33. Display the sales cost of the packages developed by each programmer language wise.
 SELECT PNAME, 
 DEVELOPIN,
 SUM(SCOST) AS "SALES COST BY LANGAUGE"
 FROM Software  
 GROUP BY DEVELOPIN,PNAME

 -- 34. Display each language name with the average development cost,average selling cost and average price per copy.

SELECT 
AVG(DCOST),
AVG(SCOST),
AVG(SCOST) 
FROM Software

-- 35. Display each programmer�s name and the costliest and cheapest packages developed by him or her.
SELECT PNAME,
MAX(DCOST) AS "COSLIEST DEVELOPEMENT",
MIN(DCOST) AS "CHEAPEST DEVELOPEMENT"
FROM Software
GROUP BY PNAME

-- 36. Display each institute�s name with the number of courses and the average cost per course.
SELECT INSTITUTE,
COUNT(COURSE) AS "NUMBER OF COURSES ",
AVG(COURSE_FEE) AS "AVERAGE COURSE FEE"
FROM Studies 
GROUP BY INSTITUTE

-- 37. Display each institute�s name with the number of students.
 SELECT 
 DEVELOPIN AS 'LANGAUGE',
 COUNT(TITLE) AS 'NUMBER OF PACKAGES'
 FROM Software
 WHERE DEVELOPIN != 'C' AND DEVELOPIN != 'C++'
 GROUP BY DEVELOPIN

-- 41. Display the number of packages in each language for which development cost is less than 1000.
 SELECT 
 DEVELOPIN AS "LANGAUGE",
 COUNT(TITLE) AS 'PACKAGE'
 FROM Software
 WHERE DCOST >= 1000
 GROUP BY DEVELOPIN
 
-- 42. Display the average difference between SCOST and DCOST for each package
 
 SELECT 
 TITLE,
 AVG(DCOST - SCOST) AS "AVG(SCOST- DCOST)"
 FROM Software
 GROUP BY TITLE

-- 43. Display the total SCOST, DCOST and the amount to be recovered for each programmer whose cost has not yet been recovered.
 SELECT 
 PNAME,
 SUM(SCOST) 'TOTAL SELLING COST',
 SUM(DCOST)'TOTAL DEVELOPING COST',
 SUM(DCOST-(SCOST * SOLD)) 'COST NEED TO RECOVER'
 FROM Software
 GROUP BY PNAME
 HAVING SUM(DCOST) > SUM(SOLD * SCOST)

-- 44. Display the highest, lowest and average salaries for those earning more than 2000

 SELECT 
 MAX(SALARY) AS " MAX SALARY",
 MIN(SALARY) AS "MIN SALARY",
 AVG(SALARY) AS "AVG SALARY"
 FROM Programmer
 WHERE SALARY >= 2000

-- 45. Who is the Highest Paid C Programmers? 

 SELECT * 
 FROM Programmer
 WHERE 
 SALARY =(SELECT MAX (SALARY) FROM Programmer
          WHERE PROF1 = 'C' OR PROF2 = 'C')

-- 46. Who is the highest paid female COBOL programmer?
 
 SELECT * 
 FROM Programmer
 WHERE 
 SALARY = (SELECT MAX(SALARY) FROM Programmer
           WHERE  (PROF1 = 'COBOL' OR PROF2 = 'COBOL')) AND (GENDER = 'F') 

-- 47. Display the names of the highest paid programmers for each language.
  SELECT PNAME, SALARY, PROF1 AS PROF FROM programmer
  UNION 
  SELECT PNAME, SALARY, PROF2 FROM programmer
  )
  SELECT p1.PNAME, p1.PROF, p1.SALARY
  FROM CTC as p1
  LEFT JOIN CTC as 
  p2
  ON p1.PROF = p2.PROF AND p1.SALARY < p2.SALARY
  WHERE p2.PNAME IS NULL;
 --SELECT min(
 --case
 --when dateadd(year, datediff(YEAR, doj, getdate()), doj)>getdate()
 --then datediff(YEAR, doj, getdate()) - 1
 --else
 --datediff(YEAR, doj, getdate()) end) As experience
 --from programmer;
 
 --case
 --when dateadd(year, datediff(YEAR, doj, getdate()), doj)>getdate()
 --then datediff(YEAR, doj, getdate()) - 1
 --else
 --datediff(YEAR, doj, getdate()) end) As experience
 --from programmer
 --where prof1='pascal' or prof2='pascal';
   CREATE TABLE PSLang(PROF VARCHAR(20))

	Select * from pslang

	INSERT INTO PSLang 
	SELECT PROF1 FROM programmer 
	GROUP BY PROF1 HAVING
	PROF1 NOT IN (SELECT PROF2 FROM programmer) 
	AND COUNT(PROF1)=1
	UNION
	SELECT PROF2 FROM programmer 
	GROUP BY PROF2 HAVING
	PROF2 NOT IN (SELECT PROF1 FROM programmer) 
	AND COUNT(PROF2)=1

	SELECT PNAME, PROF FROM programmer 
	INNER JOIN PSLang ON
	PROF=PROF1 OR PROF=PROF2
 case
 when dateadd(year, datediff(YEAR, dob, getdate()), dob)>getdate()
 then datediff(YEAR, dob, getdate()) - 1
 else
 datediff(YEAR, dob, getdate()) end As Age
 from programmer where dob = (SELECT max(dob) from programmer where prof1='dbase' or prof2='dbase');
-- 53. Which female programmer earning more than 3000 does not know C,C++, Oracle or dBase?
 SELECT *
 FROM Programmer
 WHERE (PROF1 NOT IN ('C','C++','ORACLE','DBASE') 
  AND  PROF2 NOT IN ('C','C++','ORACLE','DBASE'))
  AND( SALARY >=3000 AND  GENDER = 'F')

-- 54. Which Institute has most number of Students? 
 

	CREATE TABLE InstStudNo (InstituteName VARCHAR(20), StdNo INT)

	INSERT INTO InstStudNo
	SELECT INSTITUTE,COUNT(PNAME) FROM studies GROUP BY INSTITUTE

	SELECT InstituteName,StdNo AS COUNT_OF_STUDENTS FROM InstStudNo
	WHERE StdNo = (SELECT MAX(StdNo) FROM InstStudNo)

	select * from InstStudNo

-- 55.What is the costliest course?

	SELECT 
	COURSE,
	COURSE_FEE
	FROM Studies
	WHERE COURSE_FEE= (SELECT MAX(COURSE_FEE) FROM Studies)


-- 56. Which course has been done by the most of the Students? 

	CREATE TABLE MOSTCDONE (CourNam VARCHAR(20), StdNo INT)

	INSERT INTO MOSTCDONE
	SELECT COURSE,COUNT(PNAME) FROM studies GROUP BY COURSE

	select * from MOSTCDONE

	SELECT CourNam,StdNo AS COUNT_OF_STUDENTS FROM MOSTCDONE WHERE StdNo = 
	(SELECT MAX(StdNo) FROM MOSTCDONE)

-- 57. Which Institute conducts costliest course. 

	SELECT 
	INSTITUTE,
	COURSE_FEE
	FROM Studies
	WHERE COURSE_FEE = (SELECT MAX(COURSE_FEE) FROM Studies)

-- 58. Display the name of the institute and the course which has below average course fee.

     
	WHERE DOB = (SELECT MIN(DOB) FROM Programmer WHERE YEAR(DOB) = '1965' AND GENDER = 'M')
--case
--when dateadd(year, datediff(YEAR, dob, getdate()), dob)>getdate()
--then datediff(YEAR, dob, getdate()) - 1
--else
--datediff(YEAR, dob, getdate()) end As Age
--from programmer where dob = (SELECT MIN(dob) from programmer where YEAR(dob)='1965' and GENDER='M');
	WHERE DOB = (SELECT MIN(DOB) FROM Programmer WHERE YEAR(DOJ) = '1992' AND GENDER = 'F')
	--case
	--when dateadd(year, datediff(YEAR, dob, getdate()), dob)>getdate()
	--then datediff(YEAR, dob, getdate()) - 1
	--else
	--datediff(YEAR, dob, getdate()) end As Age
	--from programmer where dob = (SELECT min(dob) from programmer where YEAR(doj)='1992' and GENDER='F');
   --where p.pname=s.pname and salary>3000 and gender='m';
   --where p.pname=s.pname and gender='f' and DEVELOPIN ='pascal';
   --count(software.developin) AS developin, 
   --count(software.sold) As Sold, 
   --sum(software.sold*software.scost) AS sales
   --from software,studies
   --where software.pname =studies.pname group by studies.institute;

	INSERT INTO #INST
	SELECT INSTITUTE, COUNT(PNAME) FROM studies GROUP BY INSTITUTE

	SELECT distinct SW.* FROM software AS SW, programmer AS PG, studies AS ST, #INST
	WHERE DEVELOPIN='DBASE' AND GENDER='M' AND SW.PNAME = PG.PNAME 
	AND INSTITUTE = INS AND CNT= (SELECT MAX(CNT) FROM #INST)


-- 89. Display the details of the software Developed by the male programmers Born before 1965 and female programmers born after 1975. 
  
   --where s.pname=p.pname and (developin <> prof1 and developin <> prof2);
   --where s.pname=st.pname 
   union
   select prof2 from programmer where prof2 not in(select developin from software);

-- 99. How much does the person who developed the highest selling package earn and what course did HE/SHE undergo. 
	select p1.salary,s2.course from programmer p1,software s1,studies s2
	where p1.pname=s1.pname and s1.pname=s2.pname and scost=(select max(scost) from software);

-- 100. What is the AVG salary for those whose software sales is more than 50,000/-. 
	select avg(salary) from programmer p,software s
	where p .pname=s.pname and sold*scost>50000;

-- 101. How many packages were developed by students, who studied in institute that charge the lowest course fee? 
	select s.pname, count(title) As packages from software s,studies st
	where s.pname=st.pname group by s.pname,COURSE_FEE having min(COURSE_FEE)=(select min(COURSE_FEE) from studies);

-- 102. How many packages were developed by the person who developed the cheapest package, where did HE/SHE study? 
	select count(developin) from programmer p,software s
	where s .pname=p.pname group by developin having min(dcost)=(select min(dcost) from software);

-- 103. How many packages were developed by the female programmers earning more than the highest paid male programmer? 
	select count(developin) from programmer p,software s
	where s.pname=p.pname and gender='f' and salary>(select max(salary) from programmer p,software s
	where s.pname=p.pname and gender='m');

-- 104. How many packages are developed by the most experienced programmer form BDPS. 
	select count(*) from software s,programmer p
	where p.pname=s.pname group by doj having min(doj)=(select min(doj)
	from studies st,programmer p, software s
	where p.pname=s.pname and st.pname=p.pname and (institute='bdps'));

-- 105. List the programmers (form the software table) and the institutes they studied, including those WHO DIDN'T develop any package.
	select pname,institute from studies
	where pname not in(select pname from software);

-- 106. List each PROF with the number of Programmers having that PROF and the number of the packages in that PROF. 
	select count(*),sum(scost*sold-dcost) "PROFIT" from software
	where developin in (select prof1 from programmer) group by developin;

-- 107. List the programmer names (from the programmer table) and No. Of Packages each has developed.
	select s.pname,count(developin) from programmer p1,software s
	where p1.pname=s.pname group by s.pname;