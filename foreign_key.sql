--In SQL Server, a foreign key is a constraint that enforces referential integrity between two tables. It ensures that the values in a column (or columns) of one table match the values in a primary key column (or unique constraint) of another table. This helps maintain data consistency and relationships between tables. Here's an example of how to create a foreign key in SQL Server:

--Let's consider two tables: Orders and Customers. We want to create a foreign key relationship between them to ensure that each order is associated with a valid customer.


-- Creating the Customers table with a primary key
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Email VARCHAR(255)
);

-- Creating the Orders table with a foreign key
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT, -- This column will be the foreign key
    TotalAmount DECIMAL(10, 2),
    
    -- Creating a foreign key constraint
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

-- Insert values into the Customers table
INSERT INTO Customers (CustomerID, CustomerName, Email)
VALUES
    (1, 'John Smith', 'john.smith@example.com'),
    (2, 'Jane Doe', 'jane.doe@example.com'),
    (3, 'Alice Johnson', 'alice.johnson@example.com');

-- Insert values into the Orders table
INSERT INTO Orders (OrderID, OrderDate, CustomerID, TotalAmount)
VALUES
    (101, '2023-09-16', 1, 50.00),
    (102, '2023-09-17', 2, 75.50),
    (103, '2023-09-18', 1, 30.25);

---In this example:

--We create a Customers table with a primary key on the CustomerID column.

--We create an Orders table with a CustomerID column, which will become the foreign key.

--To create the foreign key constraint, we use the FOREIGN KEY keyword followed by the column name (CustomerID) and specify the REFERENCES clause to indicate the referenced table (Customers) and the referenced column (CustomerID).

--Now, the CustomerID column in the Orders table is a foreign key that references the CustomerID column in the Customers table. This means that whenever you insert or update data in the Orders table, SQL Server will enforce referential integrity by ensuring that the values in the CustomerID column of the Orders table exist in the CustomerID column of the Customers table.

--If you try to insert an order with a CustomerID that doesn't exist in the Customers table or delete a customer with associated orders, SQL Server will raise a foreign key constraint violation error. This helps maintain the integrity of the data and ensures that the relationships between the two tables are maintained.