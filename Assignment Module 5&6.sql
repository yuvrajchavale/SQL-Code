USE Assignment3and4;
GO

CREATE PROCEDURE GetBookedRestaurants
AS
BEGIN
    SELECT RestaurantName, RestaurantType, CuisinesType
    FROM dbo.Jomato
    WHERE TableBooking <> 0;
END;

BEGIN TRANSACTION;

UPDATE dbo.Jomato
SET CuisinesType = 'Cafeteria'
WHERE CuisinesType = 'Cafe';

-- Check the result
SELECT * FROM dbo.Jomato;
-- ROLLBACK TRANSACTION; -- Uncomment this line if you want to rollback the changes

COMMIT TRANSACTION;

SELECT ROW_NUMBER() OVER (ORDER BY Rating DESC) AS RowNumber, Area, Rating
FROM dbo.Jomato
ORDER BY Rating DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

DECLARE @i INT = 1;
WHILE @i <= 50
BEGIN
    PRINT @i;
    SET @i = @i + 1;
END;


CREATE VIEW TopRating AS
SELECT TOP 5 RestaurantName, Rating
FROM dbo.Jomato
ORDER BY Rating DESC;

CREATE TRIGGER NewRestaurantInserted
ON dbo.Jomato
AFTER INSERT
AS
BEGIN
    PRINT 'A new record has been inserted into the Jomato table.';
END;

