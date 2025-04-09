# CPSC368_Project

All jupyter codes are written in python
The required python libraries are listed in `requirements.txt`.

## Research Questions

1. To what extent can county-level health behaviors (e.g., smoking rates, obesity prevalence, and physical inactivity) predict the volume of cardiovascular-related Google searches in 2014?


2. Which specific health behaviors have the greatest impact on predicting cardiovascular-related search volume, according to SHAP values from the best-performing machine learning model?


3. How do regional differences in public health behaviors influence the types of health-related concerns people search for online?

## Files
- `final_project.ipynb` &rarr; The research paper
- `eda.ipynb` &rarr; Exploratory Data Analysis during midway checkpoint
- `requirement.txt` &rarr; required python libraries
- `load.sql` &rarr; SQL code to load tables in database
- `models.ipynb` &rarr; ML Models used to answer research questions
- `ribcot_cleaning.ipynb` &rarr; Code used to clean the `RegionalInterestByConditionOverTime.csv`
- `sql_data_insert.ipynb` &rarr; Code used to generate sql insert for `load.sql`

## SQL Queries

**Query 1**
---
start load.sql

**Query 2**
---
CREATE TABLE result AS

SELECT 

  a.State AS a_State,
  
  a.CityName AS a_CityName,
  
  a.population2010,
  
  a.cityfips,
  
  a.bingedrinking,
  
  a.smokingrate,
  
  a.nophysicalactivity,
  
  a.obesityrate AS a_obesityrate,
  
  a.sleepdeprivation,
  
  b.geocode,
  
  b.cancer,
  
  b.cardiovascular,
  
  b.depression,
  
  b.diabetes,
  
  b.diarrhea,
  
  b.obesity AS b_obesity,
  
  b.rehab,
  
  b.stroke,
  
  b.vaccine
  
FROM cities500 a

JOIN ribcot b 

  ON a.State = b.State AND a.CityName = b.CityName;


**Query 3**
---
SET HEADING ON

SET LINESIZE 1000

SET PAGESIZE 50000

SET TRIMSPOOL ON

SET FEEDBACK OFF

SET ECHO OFF

SET COLSEP ','

SPOOL result.csv

SELECT

  a_State || ',' ||
  
  a_CityName || ',' ||
  
  population2010 || ',' ||
  
  cityfips || ',' ||
  
  bingedrinking || ',' ||
  
  smokingrate || ',' ||
  
  nophysicalactivity || ',' ||
  
  a_obesityrate || ',' ||
  
  sleepdeprivation || ',' ||
  
  geocode || ',' ||
  
  cancer || ',' ||
  
  cardiovascular || ',' ||
  
  depression || ',' ||
  
  diabetes || ',' ||
  
  diarrhea || ',' ||
  
  b_obesity || ',' ||
  
  rehab || ',' ||
  
  stroke || ',' ||
  
  vaccine
  
FROM result;
