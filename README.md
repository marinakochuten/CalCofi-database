# CalCofi Database

## Overview

This repository uses a realtional database hosting [CalCofi](https://calcofi.org) montioring data to explore how sea temperature and salinity vary over time. 

**Purposes of this project:**
- Practice prepping data and ingesting into a relational database
- Practice using SQL for querying

## Data and access

The full data for this project can be accessed at [CalCofi's Bottle Database](https://calcofi.org/data/oceanographic-data/bottle-database/ ): Oceanographic data collected from chemical analyses of seawater samples (1949 - present). 

Both the Bottle and Cast tables were used in this analysis. A subset of the variables from each of these tables is ingested into the relational database for querying.

To reproduce this work, the database, `cal_cofi.db`, and the anaylsis file, `visualize_query.qmd`, are required. Find all dependencies and system requirements in `session_info`. 


## Repository Structure

```
.
├── README.md
├── .gitignore
├── R/
│   ├── data_cleaning.qmd              # Cleaning full Bottle and Cast data in prep for database ingestion
│   ├── visualize_query.qmd            # Query database and visualize results in R
│   ├── visualize_query.html           # Rendered R query and vizualization 
│   └── session_info                   # Version and dependencies for reproducability 
└── sql/
    ├── cal_cofi.db                     # duckdb database with simplified bottle and cast tables            
    ├── create-database-tables.sql      # Ingesting clean Bottle and Cast data into database
    └── database-query.sql              # Query database in SQL
```
## Acknowledgements

This repository was created as an assignment for the graduate course EDS 213: Databases and Data Management in the Masters of Environmental Data Science (MEDS) program.


