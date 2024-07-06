-- Create the TargetTable
CREATE TABLE emp_t (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- Populate the TargetTable with some initial data
INSERT INTO emp_t (ID, Name, Age)
VALUES
    (1, 'John', 30),
    (2, 'Jane', 28),
    (3, 'Michael', 25);

-- Create the SourceTable
CREATE TABLE emp_s (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- Populate the SourceTable with updated data and new records
INSERT INTO emp_s (ID, Name, Age)
VALUES
    (2, 'Jessica', 29),
    (4, 'David', 32);

select * from emp_s
select * from emp_t


-- Use the MERGE statement to update, insert, and delete records
MERGE INTO emp_t AS target
USING emp_s AS source ON target.ID = source.ID

-- When a match is found (based on ID)
WHEN MATCHED THEN
    UPDATE SET
        target.Name = source.Name,
        target.Age = source.Age

-- When no match is found in the TargetTable
WHEN NOT MATCHED BY TARGET THEN
    INSERT (ID, Name, Age)
    VALUES (source.ID, source.Name, source.Age);




