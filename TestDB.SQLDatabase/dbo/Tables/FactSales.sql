CREATE TABLE [dbo].[FactSales] (
    [SalesKey]    INT             IDENTITY (1, 1) NOT NULL,
    [DateKey]     INT             NOT NULL,
    [ProductKey]  INT             NOT NULL,
    [CustomerKey] INT             NOT NULL,
    [SalesAmount] DECIMAL (18, 2) NULL,
    [Quantity]    INT             NULL,
    PRIMARY KEY CLUSTERED ([SalesKey] ASC)
);


GO

