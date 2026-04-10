CREATE TABLE [dbo].[Fact_Sales] (

	[SalesID] int NOT NULL, 
	[OrderDate] date NOT NULL, 
	[CustomerID] int NOT NULL, 
	[ProductID] int NOT NULL, 
	[Quantity] int NOT NULL, 
	[UnitPrice] decimal(18,2) NOT NULL
);