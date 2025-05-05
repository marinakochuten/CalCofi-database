-- How does sea temperature and salinity vary over time?

-- Sea temp averages
CREATE TEMP TABLE Average_Temp AS
    SELECT Cst_Cnt, T_degC, Year FROM bottle_table
    JOIN cast_table USING (Cst_Cnt);

SELECT Year, AVG(T_degC) AS Avg_Temp FROM Average_Temp
    GROUP BY Year;

-- Salinity averages
CREATE TEMP TABLE Average_Salinity AS
    SELECT Cst_Cnt, Salnty, Year FROM bottle_table
    JOIN cast_table USING (Cst_Cnt);

SELECT Year, AVG(Salnty) AS Avg_Salinity FROM Average_Salinity
    GROUP BY Year;