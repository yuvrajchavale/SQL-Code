-- 1st Question
   
   Select (Count(Distinct (State))) as 'Count OF State' from Location

-- 2nd Question
   Select * from Product
   Select Count(Type) as 'Regular Counter 'from Product
   where Type='regular';

-- 3rd How much spending has been done on marketing of product ID 1? 	Select Product, Sales from Fact	full outer join	Product	on 	Fact.ProductId=Product.ProductId	where Sales = (Select MIN(Sales) from Fact)

---6
  Select * from Product
  Where [Product Type]='Coffee'
--7
--2605 rows

---8 Easy
   Select avg(cast(sales as int)) as 'Avg Sales' from fact
   Where [Area Code]= '719' ;

--21 Easy Way 
    CREATE PROCEDURE [Type_Product]
    @input varchar (25)
    AS

    SELECT 
       * 
    FROM
        Product
    WHERE
        [Product Type] = @input

	Exec Type_Product 'Tea'
	Exec Type_Product 'Herbal Tea'

--22.
Select [Total Expenses],
Case
When [Total Expenses] < 60 then 'Profit'
When [Total Expenses] > 60 then 'Loss'
When [Total Expenses] =  0 then 'Neither Profit/Nor loss'
End AS 'Profit/Loss Status'
From fact

--23.
  Select Date ,ProductID,Sum(Datepart(Week,Cast(Sales as int))) as 'Total Week'
  from Fact
  group by date,ProductId
  With Rollup
  ---
  Select Datepart (week,Date) as Weekly, ProductID, SUM (datepart(week,Sales)) as Total_Weekly_Sales from Factgroup by Date, ProductId
With Rollup

/*25. Create a user-defined function for the product table to fetch a particularproduct type based upon the user’s preference.*/Create function Product_fn (@input varchar(20)) --input declarationreturns table --output declaration	return 	select * from Product 	where Product_Type=@input--Calling functionSelect * from dbo.Product_fn ('Tea')Select * from dbo.Product_fn ('Coffee')

  