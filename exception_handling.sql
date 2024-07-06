use test_1

CREATE TABLE DB_Errors
         (ErrorID        INT IDENTITY(1, 1),
          UserName       VARCHAR(100),
          ErrorNumber    INT,
          ErrorState     INT,
          ErrorSeverity  INT,
          ErrorLine      INT,
          ErrorProcedure VARCHAR(MAX),
          ErrorMessage   VARCHAR(MAX),
          ErrorDateTime  DATETIME)
GO

select * from DB_Errors

select 4/0

create PROC usp_divide(
    @a decimal,
    @b decimal,
    @c decimal output
) AS
BEGIN
    BEGIN TRY
        SET @c = @a / @b;
    END TRY
    BEGIN CATCH
	insert into DB_Errors 
	values( 
           -- (
			SUSER_SNAME(),
   ERROR_NUMBER(),
   ERROR_STATE(),
   ERROR_SEVERITY(),
   ERROR_LINE(),
   ERROR_PROCEDURE(),
   ERROR_MESSAGE(),
   GETDATE()
   )
    END CATCH
END;
GO

DECLARE @c decimal;
EXEC usp_divide 50,4, @c output;
PRINT @c;

-- Table to record errors
 
/*
let’s do something a little more meaningful. It’s a clever idea to track these errors. 
Things that are error-prone should be captured anyway and, at the very least, logged. 
You can also put triggers on these logged tables and even set up an email account and get a bit creative in the way of notifying people when an error occurs.
*/

CREATE TABLE DB_Errors
         (ErrorID        INT IDENTITY(1, 1),
          UserName       VARCHAR(100),
          ErrorNumber    INT,
          ErrorState     INT,
          ErrorSeverity  INT,
          ErrorLine      INT,
          ErrorProcedure VARCHAR(MAX),
          ErrorMessage   VARCHAR(MAX),
          ErrorDateTime  DATETIME)
GO

select * from DB_Errors