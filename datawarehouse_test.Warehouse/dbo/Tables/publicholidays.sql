CREATE TABLE [dbo].[publicholidays] (

	[countryOrRegion] varchar(8000) NULL, 
	[holidayName] varchar(8000) NULL, 
	[normalizeHolidayName] varchar(8000) NULL, 
	[isPaidTimeOff] bit NULL, 
	[countryRegionCode] varchar(8000) NULL, 
	[date] datetime2(6) NULL
);