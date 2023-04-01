 
-- This script was used to create the exports table from the original csv table
 WITH exports_cte (country,month_year,[value]) AS 
 (SELECT [time] AS [country], [month_year], [value] FROM [dbo].[world_primary15_159077] UNPIVOT
  (VALUE FOR month_year in(Nov2021, Dec2021,Jan2022,Feb2022,Mar2022,Apr2022,May2022,Jun2022,Jul2022,Aug2022,Sep2022,Oct2022,Nov2022,Dec2022,Jan2023))
  AS unpivot_exports)
 SELECT country, month_year, [value] INTO exports FROM exports_cte
 
 
 

