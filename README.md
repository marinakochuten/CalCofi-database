# CalCofi Database

## Overview

This repository uses a realtional database hosting [CalCofi](https://calcofi.org) montioring data to explore how sea temperature and salinity vary over time. 

**Purposes of this project:**
- Practice prepping data and ingesting into a relational database
- Practice using SQL for querying

## Data and access

The full data for this project can be accessed at [CalCofi's Bottle Database](https://calcofi.org/data/oceanographic-data/bottle-database/ ): Oceanographic data collected from chemical analyses of seawater samples (1949 - present). 

Both the Bottle and Cast tables were used in this analysis. A subset of the variables from each of these tables is ingested into the relational database for querying.


## Repository Structure

```
├── README.md
├── .gitignore
├── R
|
├── sql
├── cal_cofi.db                     # duckdb database with simplified bottle and cast tables
├── data_cleaning.qmd               # Cleaning full Bottle and Cast data in prep for database ingestion
└── create-database-tables.sql      # Ingesting clean Bottle and Cast data into database
```
## Acknowledgements

This repository was created as an assignment for the graduate course EDS 213: Databases and Data Management in the Masters of Environmental Data Science (MEDS) program.


