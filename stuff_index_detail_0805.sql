/*stuff

The STUFF function is used to insert a string into another string at a specified start location and with a specified length.
STUFF(expression, startPosition, length, expression_to_replace)
Parameters
expression - this is the string we want to add to.
startPosition – this the position number of the expression where to insert new string.
length – this is the number of characters to replace in to the expression.
expression_to_replace – the string that will be inserted. If you use NULL, nothing is inserted and a portion of the expression is replaced with nothing.
*/

SELECT STUFF('Hello world', 7, 5, 'MSSQLTIPS') as msg 
--The following example will insert the word "MSSQLTIPS" starting at position 7 and replace 5 characters, which would be the word "world".

--indexes
/*
Indexes are used by queries to find data from tables quickly. Indexes are created on tables and views. Index on a table or a view, is very similar to an index that we find in a book.
If you don't have an index, and I ask you to locate a specific chapter in the book, you will have to look at every page starting from the first page of the book.
On, the other hand, if you have the index, you lookup the page number of the chapter in the index, and then directly go to that page number to locate the chapter.
Obviously, the book index is helping to drastically reduce the time it takes to find the chapter.

In a similar way, Table and View indexes, can help the query to find data quickly.
In fact, the existence of the right indexes, can drastically improve the performance of the query. If there is no index to help the query, then the query engine, checks every row in the table from the beginning to the end. This is called as Table Scan. Table scan is bad for performance.
*/
--clustered index: determines the physical order of the data in the table, that's why only one clustered index
----
/*
 A clustered index is analogous to a telephone directory, where the data is arranged by the last name. We just learnt that, a table can have only one clustered index. However, the index can contain multiple columns (a composite index),
example: CREATE NONCLUSTERED INDEX NCI_FirstName_LastName ON
    telephone_directory(first_name, last_name)

 like the way a telephone directory is organized by last name and first name.

 A nonclustered index is analogous to an index in a textbook. The data is stored in one place, the index in another place. The index will have pointers to the storage location of the data.

Since, the nonclustered index is stored separately from the actual data, a table can have more th one non clustered index, just like how a book can have an index by Chapters at the beginning and another index by common terms at the end.
In the index itself, the data is stored in an ascending or descending order of the index key, which doesn't in any way influence the storage of data in the table.
*/
---

--create table without any index

CREATE TABLE [dbo].[student_abc](
	[id] [int],
	[admission_no] [varchar](45) NOT NULL,
	[first_name] [varchar](45) NOT NULL,
	[last_name] [varchar](45) NOT NULL,
	[age] [int] NULL,
	[city] [varchar](25) NOT NULL)

INSERT [dbo].[student_abc] ([id], [admission_no], [first_name], [last_name], [age], [city]) VALUES (3, N'5112', N'rose', N'huges', 16, N'florida')
INSERT [dbo].[student_abc] ([id], [admission_no], [first_name], [last_name], [age], [city]) VALUES (1, N'6113', N'Marielia', N'simmons', 15, N'arizone')
INSERT [dbo].[student_abc] ([id], [admission_no], [first_name], [last_name], [age], [city]) VALUES (2, N'7555', N'antonio', N'butler', 15, N'new york')

--create table with an index
CREATE TABLE [dbo].[student_abc](
	[id] [int]  primary key,
	[admission_no] [varchar](45) NOT NULL,
	[first_name] [varchar](45) NOT NULL,
	[last_name] [varchar](45) NOT NULL,
	[age] [int] NULL,
	[city] [varchar](25) NOT NULL)

INSERT [dbo].[student_abc] ([id], [admission_no], [first_name], [last_name], [age], [city]) VALUES (3, N'5112', N'rose', N'huges', 16, N'florida')
INSERT [dbo].[student_abc] ([id], [admission_no], [first_name], [last_name], [age], [city]) VALUES (1, N'6113', N'Marielia', N'simmons', 15, N'arizone')
INSERT [dbo].[student_abc] ([id], [admission_no], [first_name], [last_name], [age], [city]) VALUES (2, N'7555', N'antonio', N'butler', 15, N'new york')
------------------------------

--explain table scan/index scan/index seek
select * from [student_abc] where city='arizone'
select * from [student_abc] where first_name='antonio'
select * from [student_abc] where id=2

sp_helpindex [student_abc]

--drop constraint
alter table [student_abc]
drop constraint PK__student___3213E83F57F4A5D4

--drop index
drop index cix_student_xyz_city on [student_abc]

--unique key creates non clustered index
create table xyz2

(
id int unique 
)


/*
differences b/w clustered n nonclustered

1. Only one clustered index per table, where as you can have more than one non clustered index
2. Clustered index is faster than a non clustered index, because, the clustered index has to refer back to the table, if the selected column is not present in the index.
3. Clustered index determines the storage order of rows in the table, and hence doesn't require additional disk space, but where as a Non Clustered index is stored separately from the table, additional storage space is required.
*/

