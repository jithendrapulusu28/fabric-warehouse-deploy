CREATE TABLE [dbo].[Staging_Sales] (
    [TransactionID] INT             NULL,
    [SaleDate]      DATE            NULL,
    [ProductID]     VARCHAR (50)    NULL,
    [Quantity]      INT             NULL,
    [Amount]        DECIMAL (18, 2) NULL,
    [LoadDate]      DATETIME2 (7)   DEFAULT (sysutcdatetime()) NULL
);


GO

