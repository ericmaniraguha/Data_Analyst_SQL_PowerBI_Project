-- Cleansed DIM_Products Table --
SELECT
    p.[ProductKey],
    p.[ProductAlternateKey] AS ProductTenCode,
    --[ProductSubcategoryKey]
    --,[WeightUnitMeasureCode]
    --,[SizeUnitMeasureCode]
    p.[EnglishProductName] AS [Product Name], 
    ps.EnglishProductSubcategoryName AS [Sub Category], 
    pc.EnglishProductCategoryName AS [Product Category], 
    --[SpanishProductName]
    --[FrenchProductName] 
    --,[StandardCost]
    --,[FinishedGoodsFlag]
    p.[Color] AS [Product Color],
    --,[SafetyStockLevel]
    --,[ReorderPoint]
    --,[ListPrice]
    p.[Size] AS [Product Size],
    --,[SizeRange]
    --,[Weight]
    --,[DaysToManufacture]
    p.[ProductLine] AS [Product Line],
    --,[Dealer Price] 
    --,[Class]
    --,[Style]
    p.[ModelName] AS [Product Model Name],
    --,[LargePhoto]
    p.[EnglishDescription] AS [Product Description],
    --,[FrenchDescription]
    -- Joined in from Sub Category Table Joined in from Category Table
    --,[ChineseDescription]
    --,[ArabicDescription]
    --,[HebrewDescription]
    --,[ThaiDescription]
    --,[GermanDescription]
    --,[JapaneseDescription]
    --,[TurkishDescription]
    --,[StartDate],
    --,[EndDate],
    p.[Status] AS Example,
    ISNULL(p.[Status], 'Outdated') AS [Product Status]
FROM
    [dbo].[DimProduct] AS p
LEFT JOIN 
    dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
LEFT JOIN 
    dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
ORDER BY
    p.ProductKey ASC,
    pc.ProductCategoryKey;
