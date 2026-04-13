CREATE TABLE [dbo].[Orders] (

	[OrderID] int NOT NULL, 
	[OrderDate] date NOT NULL, 
	[CustomerName] varchar(100) NOT NULL, 
	[ProductName] varchar(150) NULL, 
	[Quantity] int NOT NULL, 
	[UnitPrice] decimal(10,2) NOT NULL, 
	[TotalAmount] decimal(12,2) NULL, 
	[Region] varchar(50) NULL, 
	[Status] varchar(20) NULL, 
	[OrderChannel] varchar(30) NULL
);