--clensed DM_date -- table

SELECT TOP (1000) [DateKey] ,
       [FullDateAlternateKey] AS Date -- ,[DayNumberOfWeek]
 ,
       [EnglishDayNameOfWeek] AS DAY --,[SpanishDayNameOfWeek]
 --,[FrenchDayNameOfWeek]
 --,[DayNumberOfMonth]
 --,[DayNumberOfYear]
 --,[WeekNumberOfYear]
 ,
       [EnglishMonthName] AS MONTH ,
       LEFT ([EnglishMonthName],
             3) AS Monthshort -- useful for front end date navigation and front end graphs.
 --,[FrenchMonthName]
 ,
            [MonthNumberOfYear] AS MonthNo ,
            [CalendarQuarter] AS QUARTER ,
            [CalendarYear] AS YEAR -- Calendarsemester
 --,[CalendarSemester]
 --,[FiscalQuarter]
 --,[FiscalYear]
 --,[FiscalSemester]

FROM [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2019