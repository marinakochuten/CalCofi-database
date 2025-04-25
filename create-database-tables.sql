CREATE TABLE bottle_test (
    Cst_Cnt INTEGER NOT NULL,
    Btl_Cnt INTEGER NOT NULL,
    Depthm INTEGER NOT NULL,
    T_degC REAL,
    Salnty REAL
);
.table

COPY bottle_test FROM "data/processed/bottle_clean_filtered.csv" (header TRUE, nullstr "NA");
SELECT * FROM bottle_test;

CREATE TABLE cast AS (
    Cst_Cnt INTEGER NOT NULL,
    Date DATE NOT NULL,
    Year INTEGER,
    Month INTEGER,
    Lat_Dec REAL,
    Lat_Hem
    Lon_Dec REAL,
)