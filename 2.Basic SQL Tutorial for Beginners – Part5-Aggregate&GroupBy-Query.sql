USE [TrainingDB2]
GO
--AGGREGATE FUNCTIONS
/*COUNT(): returns the number items in a set.
--COUNT(*), COUNT(Column_Name), COUNT(DISTINCT Column_Name)
*/
--CHECK DATA
SELECT * FROM [dbo].[Student]

--COUNT(*): RETURNS TOTAL NUMBER OF RECORDS IN THE TABLE
SELECT COUNT(*) 
FROM [dbo].[Student]

--COUNT(Column_Name): RETURNS NUMBER OF NOT NULL VALUES BASED ON COLUMN Mark
SELECT COUNT(Mark) 
FROM [dbo].[Student]

--COUNT(DISTINCT Column_Name): RETURNS NUMBER OF DISTINCT NOT NULL VALUES BASED ON COLUMN Mark
SELECT COUNT(DISTINCT Mark) 
FROM [dbo].[Student]

/*SUM(): returns the sum of all or distinct values in a set.
--SUM(Column_Name), SUM(DISTINCT Column_Name)
*/
--SUM(Column_Name): RETURNS SUM OF ALL NON NULL VALUES OF COLUMN Mark
SELECT SUM(Mark) 
FROM [dbo].[Student]

--SUM(DISTINCT Column_Name): RETURNS SUM OF DISTINCT NOT NULL VALUES BASED ON COLUMN Mark
SELECT SUM(DISTINCT Mark) 
FROM [dbo].[Student]

/*AVG():returns the average of a set.
--AVG(Column_Name), AVG(DISTINCT Column_Name)
*/
--AVG(Column_Name): RETURNS AVERAGE OF ALL NON NULL VALUES OF COLUMN Mark
SELECT AVG(Mark) 
FROM [dbo].[Student]
--IT RETURNS  SUM(Mark)/COUNT(Mark)=360/6 = 60

--AVG(DISTINCT Column_Name): RETURNS AVERAGE OF DISTINCT NOT NULL VALUES BASED ON COLUMN Mark
SELECT AVG(DISTINCT Mark) 
FROM [dbo].[Student]
--IT RETURNS  SUM(DISTINCT Mark)/COUNT(DISTINCT Mark)=300/5 = 60

/*MIN():returns the minimum value in a set.
--MIN(Column_Name)
*/
SELECT MIN(Mark) 
FROM [dbo].[Student]
--returns minimum value in the Mark column except NULL

/*MAX():returns the maximum value in a set.
--MAX(Column_Name)
*/
SELECT MAX(Mark) 
FROM [dbo].[Student]
--returns maximum value in the Mark column except NULL

--GROUP BY: 
/*
GROUP BY with Single/Multiple columns
GROUP BY with aggregate functions
GROUP BY with JOIN
*/

--GROUP BY Single column
SELECT Class 
FROM Student
GROUP BY Class
--this will group the student table based on column class
--and returns single value for each repeated values

--GROUP BY with aggregate function
SELECT Class,count(*)
FROM Student
GROUP BY Class
--this returns count of students in each class from student table

SELECT Class,SUM(Mark)
FROM Student
GROUP BY Class
--this returns sum or total marks in each class from student table

SELECT Class,AVG(Mark)
FROM Student
GROUP BY Class
--this returns average marks in each class from student table

SELECT Class,MIN(Mark)
FROM Student
GROUP BY Class
--this returns lowest marks in each class from student table

SELECT Class,MAX(Mark)
FROM Student
GROUP BY Class
--this returns highest marks in each class from student table

--GROUP BY WITH JOIN
--GET COUNT OF EMPLOYEES IN EACH DEPARTMENT
SELECT d.DepartmentName,count(*) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

SELECT d.DepartmentName,SUM(Salary) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

SELECT d.DepartmentName,AVG(Salary) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

SELECT d.DepartmentName,MIN(Salary) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

--GET COUNT OF EMPLOYEES IN EACH DEPARTMENT
SELECT d.DepartmentName,MAX(Salary) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

--GET COUNT OF EMPLOYEES IN EACH STORE and DEPARTMENT
SELECT s.StoreName,d.DepartmentName,count(*) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
INNER JOIN Store s on e.StoreID = s.StoreID
GROUP BY s.StoreName,d.DepartmentName
order by s.StoreName

--HAVING CLAUSE
--GET THE EMPLOYEE RECORDS GROUPPED BY STORE NAME AND DEPARTMENT
--HAVING EMPLOYEE COUNT GREATER THAN 2
SELECT s.StoreName,d.DepartmentName,count(*) as EmployeeCount
FROM Employee e
INNER JOIN Department d
on e.DepartmentID = d.DepartmentID
INNER JOIN Store s on e.StoreID = s.StoreID
GROUP BY s.StoreName,d.DepartmentName
HAVING COUNT(*) >2
order by s.StoreName,d.DepartmentName

--CHECK DUPLICATE IN EMPLOYEE TABLE USING HAVING
SELECT FirstName, LastName, Email ,count(1)
FROM Employee
group by FirstName, LastName, Email
having count(1)>2


select RollNo,Name,count(*)
from [dbo].[DanceStudent]
group by RollNo,Name
having count(*)>1












