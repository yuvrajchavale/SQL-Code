
use test_1

CREATE TABLE Employees
    (
      EmployeeID integer NOT NULL IDENTITY(1, 1) ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2)
      PRIMARY KEY CLUSTERED (EmployeeID)
    )
GO

CREATE TABLE EmployeesAudit
    (
      AuditID INTEGER NOT NULL IDENTITY(1, 1) ,
      EmployeeID INTEGER ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2) ,
      ModifiedBy VARCHAR(128) ,
      ModifiedDate DATETIME ,
      Operation CHAR(1) 
      PRIMARY KEY CLUSTERED ( AuditID )
    )
GO

INSERT INTO dbo.Employees
        ( EmployeeName ,
          EmployeeAddress ,
          MonthSalary
        )
SELECT 'Mark Smith', 'Ocean Dr 1234', 10000
UNION ALL
SELECT 'Joe Wright', 'Evergreen 1234', 10000
UNION ALL
SELECT 'John Doe', 'International Dr 1234', 10000
UNION ALL
SELECT 'Peter Rodriguez', '74 Street 1234', 10000
GO	


CREATE TRIGGER TR_Audit_Employees ON dbo.Employees
    FOR INSERT, UPDATE, DELETE
AS
    DECLARE @login_name VARCHAR(128)
 
    SELECT  @login_name = login_name
    FROM    sys.dm_exec_sessions
    WHERE   session_id = @@SPID
 
    IF EXISTS ( SELECT 0 FROM Deleted )
        BEGIN
            IF EXISTS ( SELECT 0 FROM Inserted )
                BEGIN
                    INSERT  INTO dbo.EmployeesAudit
                            ( EmployeeID ,
                              EmployeeName ,
                              EmployeeAddress ,
                              MonthSalary ,
                              ModifiedBy ,
                              ModifiedDate ,
                              Operation
                            )
                            SELECT  D.EmployeeID ,
                                    D.EmployeeName ,
                                    D.EmployeeAddress ,
                                    D.MonthSalary ,
                                    @login_name ,
                                    GETDATE() ,
                                    'U'
                            FROM    Deleted D
                END
            ELSE
                BEGIN
                    INSERT  INTO dbo.EmployeesAudit
                            ( EmployeeID ,
                              EmployeeName ,
                              EmployeeAddress ,
                              MonthSalary ,
                              ModifiedBy ,
                              ModifiedDate ,
                              Operation
                            )
                            SELECT  D.EmployeeID ,
                                    D.EmployeeName ,
                                    D.EmployeeAddress ,
                                    D.MonthSalary ,
                                    @login_name ,
                                    GETDATE() ,
                                    'D'
                            FROM    Deleted D
                END  
        END
    ELSE
        BEGIN
            INSERT  INTO dbo.EmployeesAudit
                    ( EmployeeID ,
                      EmployeeName ,
                      EmployeeAddress ,
                      MonthSalary ,
                      ModifiedBy ,
                      ModifiedDate ,
                      Operation
                    )
                    SELECT  I.EmployeeID ,
                            I.EmployeeName ,
                            I.EmployeeAddress ,
                            I.MonthSalary ,
                            @login_name ,
                            GETDATE() ,
                            'I'
                    FROM    Inserted I
        END
GO


/*
select * from Employees
select * from EmployeesAudit

insert into Employees values('sma','india','10000')
update Employees
set MonthSalary =15000
where EmployeeID=5

delete from Employees where EmployeeID=6
*/