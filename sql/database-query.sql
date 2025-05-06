-- How does sea temperature and salinity vary over time?

-- Sea temp averages
CREATE TABLE Average_Temp AS
    SELECT Year, AVG(T_degC) AS Avg_Temp FROM (
        SELECT Cst_Cnt, T_degC, Year FROM bottle_table
        JOIN cast_table USING (Cst_Cnt))
    GROUP BY Year;

SELECT * FROM Average_Temp;

-- Salinity averages
CREATE TABLE Average_Salinity AS
    SELECT Year, AVG(Salnty) AS Avg_Salinity FROM (
        SELECT Cst_Cnt, Salnty, Year FROM bottle_table
        JOIN cast_table USING (Cst_Cnt))
    GROUP BY Year;

SELECT * FROM Average_Salinity;

-- Export query results as CSV
COPY Average_Temp TO 'avg_temp.csv' (HEADER, DELIMITER ',');
COPY Average_Salinity TO 'avg_sal.csv' (HEADER, DELIMITER ',');

