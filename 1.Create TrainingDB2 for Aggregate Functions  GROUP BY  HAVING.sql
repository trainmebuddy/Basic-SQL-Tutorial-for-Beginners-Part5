USE [master]
GO
/****** Object:  Database [TrainingDB2]    Script Date: 1/25/2023 9:24:31 PM ******/
CREATE DATABASE [TrainingDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TrainingDB2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TrainingDB2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TrainingDB2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TrainingDB2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TrainingDB2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TrainingDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TrainingDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TrainingDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TrainingDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TrainingDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TrainingDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [TrainingDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TrainingDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TrainingDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TrainingDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TrainingDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TrainingDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TrainingDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TrainingDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TrainingDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TrainingDB2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TrainingDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TrainingDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TrainingDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TrainingDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TrainingDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TrainingDB2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TrainingDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TrainingDB2] SET RECOVERY FULL 
GO
ALTER DATABASE [TrainingDB2] SET  MULTI_USER 
GO
ALTER DATABASE [TrainingDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TrainingDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TrainingDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TrainingDB2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TrainingDB2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TrainingDB2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TrainingDB2', N'ON'
GO
ALTER DATABASE [TrainingDB2] SET QUERY_STORE = OFF
GO
USE [TrainingDB2]
GO
/****** Object:  Table [dbo].[DanceStudent]    Script Date: 1/25/2023 9:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanceStudent](
	[RollNo] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/25/2023 9:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] NULL,
	[DepartmentName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/25/2023 9:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](25) NULL,
	[Active] [int] NULL,
	[StoreID] [int] NULL,
	[ManagerID] [int] NULL,
	[Salary] [decimal](10, 2) NULL,
	[SalaryType] [char](1) NULL,
	[DepartmentID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 1/25/2023 9:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[StoreID] [nvarchar](50) NULL,
	[StoreName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[ZipCode] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/25/2023 9:24:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[RollNo] [int] NULL,
	[Name] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Mark] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (1, N'Rahul')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (3, N'Mike
')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (4, N'Jack
')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (5, N'George')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (1, N'Rahul')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (3, N'Mike
')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (4, N'Jack
')
GO
INSERT [dbo].[DanceStudent] ([RollNo], [Name]) VALUES (5, N'George')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (1, N'Executive')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (2, N'Finance')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (3, N'Human Resources')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (4, N'Marketing')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (5, N'Purchasing')
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (1, N'Pamelia', N'Jackson', N'pamelia.jackson@mystore.com', N'831-555-5554', 1, 1, NULL, CAST(1000000.00 AS Decimal(10, 2)), N'M', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (2, N'Kasha', N'David', N'kasha.david@mystore.com', N'831-555-5555', 1, 1, 1, CAST(120000.00 AS Decimal(10, 2)), N'M', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (3, N'George', N'Boyer', N'george.boyer@mystore.com', N'831-555-5556', 1, 1, 2, CAST(40000.00 AS Decimal(10, 2)), N'M', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (4, N'Mohan', N'Sharma', N'mohan.sharma@mystore.com', N'831-555-5557', 1, 2, 2, CAST(30000.00 AS Decimal(10, 2)), N'W', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (5, N'Ramesh', N'Singh', N'ramesh.singh@mystore.com', N'516-379-4444', 1, 2, 1, CAST(55000.00 AS Decimal(10, 2)), N'W', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (6, N'A. Scott', N'Wright', N'ascott0@adventure-works.com', N'992-555-0194', 1, 1, 2, CAST(70673.00 AS Decimal(10, 2)), N'M', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (7, N'Alan', N'Brewer', N'alan0@adventure-works.com', N'438-555-0172', 1, 1, 2, CAST(48000.00 AS Decimal(10, 2)), N'M', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (8, N'Alejandro', N'McGuel', N'alejandro0@adventure-works.com', N'668-555-0130', 1, 1, 2, CAST(45000.00 AS Decimal(10, 2)), N'M', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (9, N'Alex', N'Nayberg', N'alex0@adventure-works.com', N'819-555-0198', 1, 1, 2, CAST(30000.00 AS Decimal(10, 2)), N'M', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (10, N'Alice', N'Ciccu', N'alice0@adventure-works.com', N'333-555-0173', 1, 1, 2, CAST(33000.00 AS Decimal(10, 2)), N'M', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (11, N'Amy', N'Alberts', N'amy0@adventure-works.com', N'775-555-0164', 1, 1, 2, CAST(144303.00 AS Decimal(10, 2)), N'M', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (12, N'Andreas', N'Berglund', N'andreas0@adventure-works.com', N'181-555-0124', 1, 1, 2, CAST(31731.00 AS Decimal(10, 2)), N'M', 5)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (13, N'Andrew', N'Cencini', N'andrew1@adventure-works.com', N'207-555-0192', 1, 1, 2, CAST(30000.00 AS Decimal(10, 2)), N'M', 5)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (14, N'Andrew', N'Hill', N'andrew0@adventure-works.com', N'908-555-0159', 1, 1, 2, CAST(75000.00 AS Decimal(10, 2)), N'M', 4)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (15, N'Andy', N'Ruth', N'andy0@adventure-works.com', N'118-555-0110', 1, 1, 2, CAST(28500.00 AS Decimal(10, 2)), N'M', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (16, N'Angela', N'Barbariol', N'angela0@adventure-works.com', N'150-555-0194', 1, 2, 5, CAST(33000.00 AS Decimal(10, 2)), N'W', 4)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (17, N'Anibal', N'Sousa', N'anibal0@adventure-works.com', N'106-555-0120', 1, 2, 5, CAST(42000.00 AS Decimal(10, 2)), N'W', 4)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (18, N'Annette', N'Hill', N'annette0@adventure-works.com', N'125-555-0196', 1, 2, 5, CAST(38250.00 AS Decimal(10, 2)), N'W', 4)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (19, N'Annik', N'Stahl', N'annik0@adventure-works.com', N'499-555-0125', 1, 2, 5, CAST(37350.00 AS Decimal(10, 2)), N'W', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (20, N'Arvind', N'Rao', N'arvind0@adventure-works.com', N'848-555-0163', 1, 2, 5, CAST(54808.00 AS Decimal(10, 2)), N'W', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (21, N'Ashvini', N'Sharma', N'ashvini0@adventure-works.com', N'656-555-0119', 1, 2, 5, CAST(97356.00 AS Decimal(10, 2)), N'W', 5)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (22, N'Barbara', N'Decker', N'barbara0@adventure-works.com', N'119-555-0192', 1, 2, 5, CAST(42000.00 AS Decimal(10, 2)), N'W', 5)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (23, N'Barbara', N'Moreland', N'barbara1@adventure-works.com', N'822-555-0145', 1, 2, 5, CAST(79327.00 AS Decimal(10, 2)), N'W', 5)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (24, N'Baris', N'Cetinok', N'baris0@adventure-works.com', N'164-555-0114', 1, 2, 5, CAST(45000.00 AS Decimal(10, 2)), N'W', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [Active], [StoreID], [ManagerID], [Salary], [SalaryType], [DepartmentID]) VALUES (25, N'Barry', N'Johnson', N'barry0@adventure-works.com', N'206-555-0180', 1, 2, 5, CAST(40350.00 AS Decimal(10, 2)), N'W', 2)
GO
INSERT [dbo].[Store] ([StoreID], [StoreName], [Phone], [Email], [Street], [City], [State], [ZipCode]) VALUES (N'1', N'Santa Cruz Grocery', N'(831) 476-4321', N'santacruz@mystore.shop', N'3700 Portola Drive', N'Santa Cruz', N'CA', N'95060')
GO
INSERT [dbo].[Store] ([StoreID], [StoreName], [Phone], [Email], [Street], [City], [State], [ZipCode]) VALUES (N'2', N'Baldwin Grocery', N'(516) 379-8888', N'baldwin@mystore.shop', N'4200 Chestnut Lane', N'Baldwin', N'NY', N'11432')
GO
INSERT [dbo].[Store] ([StoreID], [StoreName], [Phone], [Email], [Street], [City], [State], [ZipCode]) VALUES (N'3', N'Rowlett Grocery', N'(972) 530-5555', N'rowlett@mystore.shop', N'8000 Fairway Avenue', N'Rowlett', N'TX', N'75088')
GO
INSERT [dbo].[Store] ([StoreID], [StoreName], [Phone], [Email], [Street], [City], [State], [ZipCode]) VALUES (N'4', N'Phoenix Grocery', N'(602) 630-6666', N'phoenix.gr@mystore.shop', N'7001 Central Avenue', N'Phoenix', N'AZ', N'85012')
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (1, N'Rahul', N'10th', 80)
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (2, N'Robin', N'10th', 40)
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (3, N'Mike
', N'10th', 60)
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (4, N'Jack
', N'9th', 70)
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (5, N'George', N'9th', 60)
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (6, N'Greg
', N'8th', 50)
GO
INSERT [dbo].[Student] ([RollNo], [Name], [Class], [Mark]) VALUES (7, N'Tom
', N'8th', NULL)
GO
USE [master]
GO
ALTER DATABASE [TrainingDB2] SET  READ_WRITE 
GO
