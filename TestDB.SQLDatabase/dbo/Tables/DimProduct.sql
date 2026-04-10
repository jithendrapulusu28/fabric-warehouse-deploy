CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]  INT           NOT NULL,
    [ProductName] VARCHAR (255) NULL,
    [Category]    VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);


GO

