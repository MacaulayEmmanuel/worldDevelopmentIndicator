-- database: c:\Users\EMMANUEL\Desktop\SQL Project_ World_Development_Indicators\World_Dev_indicators.db

-- Use the ▷ button in the top right corner to run the entire file.

SELECT count(*)
FROM Indicators;

--1
/*Did access to clean water in urban and rural populations
 in different world regions increase or decrease over the last decades?
 */
SELECT 
    Country.Region,
    Indicators.Year,
    SUM(CASE WHEN Indicators.IndicatorCode = 'SH.H2O.SAFE.UR.ZS' THEN Indicators.Value ELSE 0 END) AS UrbanCleanWaterAccess,
    SUM(CASE WHEN Indicators.IndicatorCode = 'SH.H2O.SAFE.RU.ZS' THEN Indicators.Value ELSE 0 END) AS RuralCleanWaterAccess
FROM 
    Country
    JOIN Indicators ON Country.CountryCode = Indicators.CountryCode 
WHERE 
    Indicators.IndicatorCode IN ('SH.H2O.SAFE.UR.ZS', 'SH.H2O.SAFE.RU.ZS') 
    AND Indicators.Year BETWEEN 2000 AND 2020 
GROUP BY 
    Country.Region, 
    Indicators.Year 
ORDER BY 
    Country.Region ASC, 
    Indicators.Year ASC;


--2
SELECT IndicatorName, IndicatorCode
FROM Indicators
WHERE IndicatorName LIKE '%arable land%';

--a
SELECT CountryName, CountryCode, Year, Value
FROM Indicators
WHERE IndicatorCode = 'AG.LND.ARBL.ZS';
--b
SELECT c.Region, c.IncomeGroup, i.Year, i.Value
FROM Indicators i
JOIN Country c ON i.CountryCode = c.CountryCode
WHERE i.IndicatorCode = 'SL.AGR.0714.ZS' 
AND i.Year >= 2000 
AND i.Year <= 2010;


--3
SELECT 
    c.ShortName AS Country, 
    i.Year AS CO2_Emissions_Year, 
    i.Value AS CO2_Emissions, 
    i2.Value AS Industry_Value_Added
FROM 
    Indicators i
    INNER JOIN Country c ON i.CountryCode = c.CountryCode
    INNER JOIN Indicators i2 ON i.CountryCode = i2.CountryCode AND i.Year = i2.Year
WHERE 
    i.IndicatorCode = 'EN.ATM.CO2E.PC' 
    AND i2.IndicatorCode = 'NV.IND.TOTL.CD'
    AND i.Value IS NOT NULL 
    AND i2.Value IS NOT NULL
ORDER BY 
    Country, 
    CO2_Emissions_Year;




SELECT * FROM "Indicators";

CREATE INDEX idx_indicatorCode
ON Indicators (IndicatorCode);

CREATE INDEX idx_CountryCode
ON Indicators (CountryCode);

CREATE INDEX idx_Year
ON Indicators (Year);

CREATE INDEX idx_Value
ON Indicators (Value);

