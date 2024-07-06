
select *
from SalesTerritory

-----create table to practise pivot unpivot
use test
CREATE TABLE SalesTerritory
(
	[TerritoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] varchar(20),
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[Group] [nvarchar](50) NOT NULL,
	[SalesYTD] [money] NOT NULL,
	[SalesLastYear] [money] NOT NULL,
	[CostYTD] [money] NOT NULL,
	[CostLastYear] [money] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL)

	INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Northwest', N'US', N'North America', 7887186.7882, 3298694.4938, 0.0000, 0.0000, N'43689a10-e30b-497f-b0de-11de20267ff7', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Northeast', N'US', N'North America', 2402176.8476, 3607148.9371, 0.0000, 0.0000, N'00fb7309-96cc-49e2-8363-0a1ba72486f2', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Central', N'US', N'North America', 3072175.1180, 3205014.0767, 0.0000, 0.0000, N'df6e7fd8-1a8d-468c-b103-ed8addb452c1', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Southwest', N'US', N'North America', 10510853.8739, 5366575.7098, 0.0000, 0.0000, N'dc3e9ea0-7950-4431-9428-99dbcbc33865', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Southeast', N'US', N'North America', 2538667.2515, 3925071.4318, 0.0000, 0.0000, N'6dc4165a-5e4c-42d2-809d-4344e0ac75e7', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Canada', N'CA', N'North America', 6771829.1376, 5693988.8600, 0.0000, 0.0000, N'06b4af8a-1639-476e-9266-110461d66b00', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'France', N'FR', N'Europe', 4772398.3078, 2396539.7601, 0.0000, 0.0000, N'bf806804-9b4c-4b07-9d19-706f2e689552', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Germany', N'DE', N'Europe', 3805202.3478, 1307949.7917, 0.0000, 0.0000, N'6d2450db-8159-414f-a917-e73ee91c38a9', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'Australia', N'AU', N'Pacific', 5977814.9154, 2278548.9776, 0.0000, 0.0000, N'602e612e-dfe9-41d9-b894-27e489747885', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [SalesTerritory] ([Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES ( N'United Kingdom', N'GB', N'Europe', 5012905.3656, 1635823.3967, 0.0000, 0.0000, N'05fc7e1f-2dea-414e-9ecd-09d150516fb5', CAST(N'2008-04-30T00:00:00.000' AS DateTime))


----
/*
PIVOT is a relational operator that allows database developers to convert query results from rows to columns. Meanwhile, UNPIVOT will be used to rotate data from columns into rows. In other words, you can change a table-valued expression into another table by using UNPIVOT/ UNPIVOT.
The Pivot operator converts the row data into a column data.

The Unpivot relational operator works the opposite of the Pivot operator. It converts the column-based data into row-based data and row-based data into a column based data.

Using PIVOT we will use the following code. As you will see we have to know ahead of time what columns we want to pivot on. In the example below we specify [Europe], [North America], [Pacific]. There is no simple way to use PIVOT without knowing the values ahead of time
*/
select * from SalesTerritory

select [group],sum([salesYTD]) salesYTD
from SalesTerritory
group by [group]

--pivot
select 'SalesYTD' as [group],
[europe],[north america],[Pacific]
--into #salesterritorypivot
from
(
select salesYTD,[group]
from SalesTerritory
) as tabletopivot
pivot
(
sum(salesYTD)
for [group] in ([europe],[north america],[pacific])
) as pivottable

--select * into 'emp'
--from 'students'

select * from salesterritorypivot

select [group],sum([salesYTD]) salesYTD
from SalesTerritory
group by [group]

select * from salesterritorypivot


--unpivot
select [group],sales
from
(
select europe,[north america],pacific
from salesterritorypivot
) tabletounpivot
UNPIVOT
(
sales for [group]
in (europe,[north america],pacific)
) as unpivottable