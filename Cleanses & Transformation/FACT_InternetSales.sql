-- Cleansed FACT_InternetSales Table --

SELECT [ProductKey],
       [OrderDateKey],
       [DueDateKey],
       [ShipDateKey],
       [CustomerKey], --[Promotionkey]
--,[CurrencyKey]
--[SalesTerritoryKey]
[SalesOrderNumber], -- [SalesOrderLineNumber],
--[RevisionNumber]
--,[OrderQuantity],
--,[UnitPrice],
--,[ExtendedAmount]
--[UnitPriceDiscountPct]
--,[Discount Amount]
--,[ProductStandardCost]
--,[TotalProductCost]
[SalesAmount] -- ,[TaxAmt]
--,[Freight]
--,[CarrierTrackingNumber]
--,[CustomerPONumber]
--,[OrderDate]
--,[DueDate]
--[ShipDate]
FROM [dbo].[FactInternetSales]
--WHERE LEFT (OrderDateKey,
            --4)> YEAR (GETDATE())-2 -- Ensures we always only bring two years of date from extraction.
WHERE 
    CONVERT(datetime, CONVERT(char(8), [OrderDateKey]), 112) >= '2021-01-01' 
    AND CONVERT(datetime, CONVERT(char(8), [OrderDateKey]), 112) < '2024-01-01'
ORDER BY OrderDateKey ASC