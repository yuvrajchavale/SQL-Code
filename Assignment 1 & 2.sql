use Asignement1; 

--Salesman table Creation

CREATE TABLE Salesman (
SalesmanId INT,
Name VARCHAR(255),
Commission DECIMAL(10, 2),
City VARCHAR(255),
Age INT
);

--Salesman table record insertion
INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age)
VALUES
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersey', 30);


--Customer table creation

CREATE TABLE Customer (
SalesmanId INT,
CustomerId INT,
CustomerName VARCHAR(255),
PurchaseAmount INT,
);

-- Customer table record insertion

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
(101, 2345, 'Andrew', 550),
(103, 1575, 'Lucky', 4500),
(104, 2345, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia', 4545);

-- Orders table Creation

CREATE TABLE Orders (OrderId int, CustomerId int, SalesmanId int, Orderdate Date, Amount
money)

--Orders table record insertion

INSERT INTO Orders Values
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)

INSERT INTO Orders (OrderDate, CustomerID, SalesmanID, Amount)
VALUES ('2024-05-30', 1234, 5678, 1000);

ALTER TABLE Salesman
ADD CONSTRAINT PK_Salesman PRIMARY KEY (SalesmanId);

ALTER TABLE Salesman
ADD CONSTRAINT DF_City DEFAULT 'Unknown' FOR City;
ALTER TABLE Customer
ADD CONSTRAINT FK_SalesmanId FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);


ALTER TABLE Customer
ALTER COLUMN CustomerName SET NOT NULL;

SELECT * 
FROM Orders
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM Customer 
    WHERE CustomerName LIKE '%N' 
)
AND Amount > 500;
select* from Customer

SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Orders;

-- Retrieve SalesmanId with duplicates from two tables
SELECT SalesmanId FROM Salesman
INTERSECT
SELECT SalesmanId FROM Orders;

SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Orders;

-- Retrieve SalesmanId with duplicates from two tables
SELECT SalesmanId FROM Salesman
INTERSECT
SELECT SalesmanId FROM Orders;

select * from Salesman

SELECT O.OrderDate, S.Name, C.CustomerName, S.Commission, S.City
FROM Orders O
INNER JOIN Salesman S ON O.SalesmanID = S.SalesmanID
INNER JOIN Customer C ON O.CustomerID = C.CustomerID
WHERE O.Amount BETWEEN 500 AND 1500;

SELECT *
FROM Salesman S
RIGHT JOIN Orders O ON S.SalesmanID = O.SalesmanID;
