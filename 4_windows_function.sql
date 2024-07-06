/*
The RANK() function is a window function that assigns a rank to each row within a partition of a result set.

The rows within a partition that have the same values will receive the same rank. The rank of the first row within a partition is one. The RANK() function adds the number of tied rows to the tied rank to calculate the rank of the next row, therefore, the ranks may not be consecutive.

syntax
First, the PARTITION BY clause divides the rows of the result set partitions to which the function is applied.
Second, the ORDER BY clause specifies the logical sort order of the rows in each a partition to which the function is applied.

The ROW_NUMBER() is a window function that assigns a sequential integer to each row within the partition of a result set. The row number starts with 1 for the first row in each partition.

The ROW_NUMBER() is a window function that assigns a sequential integer to each row within the partition of a result set. The row number starts with 1 for the first row in each partition.
*/

use test


select *,
rank() over (order by marks) rank 
from  ExamResult

select *,
dense_rank() over (order by marks) rank 
from  ExamResult

select *,
row_number() over (order by marks) rank 
from  ExamResult

select *,
ntile(3) over (order by marks) rank 
from  ExamResult

select *,
rank() over (partition by subject order by marks) rank 
from  ExamResult

select *,
dense_rank() over (partition by subject order by marks) rank 
from  ExamResult

select *,
row_number() over (partition by subject order by marks) rank 
from  ExamResult

select *,
ntile(4) over (partition by subject order by marks) rank 
from  ExamResult


select * from ExamResult


---functions--

select * from sales

create function dollar(@rupees float)
returns float
as
begin
return ((@rupees)/84)
end

select *,dbo.dollar(amount) as dollar_price from sales


CREATE FUNCTION dbo,city(
    @city varchar(25)
)
RETURNS TABLE
AS
RETURN
    SELECT *
        
    FROM
        student
    WHERE
        city = @city;



use test
select * from city('new york')
