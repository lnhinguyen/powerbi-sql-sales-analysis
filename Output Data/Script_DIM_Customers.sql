/****** Script for SelectTopNRows command from SSMS  ******/
-- Cleansed DIM_Customers Table --
SELECT 
	c.CustomerKey AS CustomerKey,
    --  ,[GeographyKey]
    --  ,[CustomerAlternateKey]
    --  ,[Title]
    c.FirstName AS [First Name],
    --  ,[MiddleName]
    c.LastName AS [Last Name],
	c.FirstName + ' ' + c.LastName AS [Full Name],
    --  ,[NameStyle]
    --  ,[BirthDate]
    --  ,[MaritalStatus]
    --  ,[Suffix]
    --  ,[Gender]
    --  ,[EmailAddress]
    --  ,[YearlyIncome]
    --  ,[TotalChildren]
    --  ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
    --  ,[FrenchEducation]
    --  ,[EnglishOccupation]
    --  ,[SpanishOccupation]
    --  ,[FrenchOccupation]
    --  ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
    --  ,[AddressLine1]
    -- ,[AddressLine2]
    --  ,[Phone]
    c.DateFirstPurchase AS [Date1stPurchase],
    --  ,[CommuteDistance]
	g.city AS [Customer City] -- Joined in Customer CIty from Geography Table
FROM 
	[dbo].[DimCustomer] AS c
	LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
	CustomerKey ASC -- Ordered List by CustomerKey
