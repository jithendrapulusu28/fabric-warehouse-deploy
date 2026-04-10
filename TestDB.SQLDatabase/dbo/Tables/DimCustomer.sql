CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]  INT           NOT NULL,
    [CustomerName] VARCHAR (255) NULL,
    [Region]       VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);


GO

