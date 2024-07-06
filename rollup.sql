USE test;


  CREATE TABLE #employee
  (
      id INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      gender VARCHAR(50) NOT NULL,
      salary INT NOT NULL,
      department VARCHAR(50) NOT NULL
   )

   INSERT INTO #employee
  VALUES
  (1, 'David', 'Male', 5000, 'Sales'),
  (2, 'Jim', 'Female', 6000, 'HR'),
  (3, 'Kate', 'Female', 7500, 'IT'),
  (4, 'Will', 'Male', 6500, 'Marketing'),
  (5, 'Shane', 'Female', 5500, 'Finance'),
  (6, 'Shed', 'Male', 8000, 'Sales'),
  (7, 'Vik', 'Male', 7200, 'HR'),
  (8, 'Vince', 'Female', 6600, 'IT'),
  (9, 'Jane', 'Female', 5400, 'Marketing'),
  (10, 'Laura', 'Female', 6300, 'Finance'),
  (11, 'Mac', 'Male', 5700, 'Sales'),
  (12, 'Pat', 'Male', 7000, 'HR'),
  (13, 'Julie', 'Female', 7100, 'IT'),
  (14, 'Elice', 'Female', 6800,'Marketing'),
  (15, 'Wayne', 'Male', 5000, 'Finance')

  select * from #employee

  /*
  The GROUP BY clause is used to group the results of aggregate functions according to a specified column. However, the GROUP BY clause doesn’t perform aggregate operations on multiple levels of a hierarchy. For example, you can calculate the total of salaries for each department in a company (one level of hierarchy) but you cannot calculate the total salary of all employees regardless of the department they work in (two levels of hierarchy).

  ROLLUP operators let you extend the functionality of GROUP BY clauses by calculating subtotals and grand totals for a set of columns. The CUBE operator is similar in functionality to the ROLLUP operator; however, the CUBE operator can calculate subtotals and grand totals for all permutations of the columns specified in it.

  */

  SELECT department,gender, sum(salary) as Salary_Sum
  FROM #employee
  GROUP BY department,gender
  order by department

  --SELECT 
  --coalesce (department, 'All Departments') AS Department,
  --coalesce (gender,'All Genders') AS Gender,
  --sum(salary) as Salary_Sum
  --FROM #employee
  --GROUP BY department,gender

  SELECT 
  --coalesce (department, 'All Departments') AS 
  Department,
  --coalesce (gender,'All Genders') AS 
  Gender,
  sum(salary) as Salary_Sum
  FROM #employee
  GROUP BY ROLLUP (department,gender)
  order by department

  SELECT 
 -- coalesce (department, 'All Departments') AS 
 Department, 
--coalesce (gender,'All Genders') AS 
Gender, 
sum(salary) as Salary_Sum 
  FROM #employee 
  GROUP BY CUBE (department, gender) 
    order by department
