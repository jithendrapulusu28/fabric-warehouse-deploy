CREATE TABLE [dbo].[DimDate] (
    [DateKey]  INT  NOT NULL,
    [FullDate] DATE NULL,
    [Year]     INT  NULL,
    [Quarter]  INT  NULL,
    [Month]    INT  NULL,
    PRIMARY KEY CLUSTERED ([DateKey] ASC)
);


GO

