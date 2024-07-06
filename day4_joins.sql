-- Create Departments table
/*
In SQL Server, joins are used to combine data from two or more tables based on a related column. There are several types of joins, each serving a different purpose. Let's go over them in simple terms:

Inner Join:

Think of it like a filter. Only the rows with matching values in both tables are selected.
Imagine you have a list of students and a list of courses. An inner join would give you a list of students who are enrolled in courses.
Left Join (or Left Outer Join):

Think of it like keeping everything from the left table and adding matching rows from the right table.
Suppose you have a list of employees and a list of departments. A left join would give you a list of all employees, including their department information if they are in a department.
Right Join (or Right Outer Join):

This is similar to a left join, but it keeps everything from the right table and adds matching rows from the left table.
Continuing with the employee and department example, a right join would give you a list of all departments, along with any employees in those departments.
Full Outer Join:

Think of it as a combination of left and right joins. It keeps everything from both tables and matches where possible.
If you have a list of authors and a list of books, a full outer join would give you a list of all authors and all books, with any connections between them if they exist.
Cross Join (or Cartesian Join):

Think of it as combining every row from the first table with every row from the second table.
If you have a list of colors and a list of sizes, a cross join would give you a list of all possible combinations of colors and sizes.
These join types help you manipulate and combine data in various ways to extract the information you need from related tables. Remember that understanding the relationships between the tables and the nature of your data is crucial in choosing the appropriate join type for your query.*/

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Populate Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Sales'),
    (4, 'Marketing');

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT, -- This will be a foreign key referencing Departments table
    CONSTRAINT FK_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Populate Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID)
VALUES
    (1, 'John', 'Doe', 1),
    (2, 'Jane', 'Smith', 2),
    (3, 'Michael', 'Johnson', 1),
    (4, 'Emily', 'Williams', 3),
    (5, 'David', 'Brown', 2),
    (6, 'Sophia', 'Davis', 3),
	(7, 'rahul','jain',4)

select * from Employees
select * from Departments

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID;


