# Descriptive Analysis of BRFSS Data - 2018 Veteran Data
Sample Analysis of BRFSS Data to Demonstrate Use of R for Descriptive and Regression Analyses


## What is the Behavioral Risk Factor Surveillance System (BRFSS): 

The Behavioral Risk Factor Surveillance System (BRFSS) is the nation's premier system of health-related telephone surveys that collect state data about U.S. residents regarding their health-related risk behaviors, chronic health conditions, and use of preventive services.

The [**BRFSS Survey**](https://www.cdc.gov/brfss/data_documentation/index.htm) ia a large anonymous phone  survey conducted **every year** through a state and federal collaboration and with [**NHANES**](https://www.cdc.gov/nchs/nhanes/index.htm) represents the main US risk factor Surveillance. 

The Behavioral Risk Factor Surveillance System (BRFSS) is the nation's premier system of health-related telephone surveys that collect state data about U.S. residents regarding their health-related risk behaviors, chronic health conditions, and use of preventive services.

The objective of the BRFSS is to collect uniform, state-specific data on preventive health practices and risk behaviors that are linked to chronic diseases, injuries, and preventable infectious diseases in the adult population. Factors assessed by the BRFSS include tobacco use, health care coverage, HIV/AIDS knowledge or prevention, physical activity, and fruit and vegetable consumption. Data are collected from a random sample of adults (one per household) through a telephone survey.

This analysis makes use of the 2018 BRFSS data set. Key items from the CDC, used to document, understand, and interpret these data include the following:

- [**2018 BRFSS Overview CDC pdf icon[PDF – 298 KB]**](https://www.cdc.gov/brfss/annual_data/2018/pdf/overview-2018-508.pdf) 
Provides information on the background, design, data collection and processing, and the statistical and analytical issues for the combined landline and cell phone data set.

- [**2018 BRFSS Codebook CDC pdf icon[PDF – 10 MB]**](https://www.cdc.gov/brfss/annual_data/2018/pdf/codebook18_llcp-v2-508.pdf) 
Codebook for the file showing variable name, location, and frequency of values for all reporting areas combined for the combined landline and cell phone data set.

- [**Calculated Variables in Data Files CDC pdf icon[PDF – 1.91 MB]**](https://www.cdc.gov/brfss/annual_data/2018/pdf/2018-calculated-variables-version4-508.pdf)

- [**2018 Summary Data Quality Report with Response Rates CDC pdf icon[PDF – 2.19 MB]**](https://www.cdc.gov/brfss/annual_data/2018/pdf/2018-sdqr-508.pdf)

- [**Complex Sampling Weights and Preparing Module Data for Analysis CDC pdf icon[PDF – 564 KB]**](https://www.cdc.gov/brfss/annual_data/2018/pdf/Complex-Smple-Weights-Prep-Module-Data-Analysis-2018-508.pdf)
An explanation of the need to use complex sampling weights and instructions for preparing a module data set for analysis.


## Insufficient Sleep

Insufficient Sleep Is a Public Health Problem.

1 / 3 of American get fewer than 7 hours of sleep per night, because of this $50 billion are lost in productivity and 5.000/6.000 fatal crash, each year, may be caused by drowsy drivers.

Adults need 7 or more hours of sleep per night for the best health and wellbeing. Short sleep duration is defined as less than 7 hours of sleep per 24-hour period.

Notably, insufficient sleep has been linked to the development and management of a number of chronic diseases and conditions, including diabetes, cardiovascular disease, obesity, and depression.

- *On average, how many hours of sleep do you get in a 24-hour period?*

(BRFSS variable SLEPTIM1) 

Starting from 2013 this new question about sleeping has been tested and so we can analyse data at least for three years (2013-2014-2016, no present in the 2015 survey)

I would like to investigate how short sleep duration varies by social/demographic factors by (sex, age, race/ethnicity, education level, income, employment status) and if risk factors (BMI, smokers, Physical activity) are more common among adults who sleep <7 hours compared to those who sleep ≥7 hours and display and propose KPIs.

In order to do this I've downloaded the three datasets available (they are very larhe, see link below) and tried to figure out the structure and the useful data/variables. As these are large data set, first af all it's necessary to manage data processing and subsetting operations. While there are over 250 variables in theses data set, I will work with a small subset of variables.


Main Analysis: 

- [**Data Dictionary with Confounders [XLSX - 33KB]**](documentation/Data_Dictionary_with_Confounders.xlsx)

- [**Analysis file with results [HTML]**](MainAnalysis.html)
 
- [**Single Analysis code file[R file]**](001_Main.R)

- [**Data Reduction [XLSX - 33KB]**](documentation/Data_DictionaryWithConfounders_Reduction.xlsx)


## BRFSS resources: 


* Dataset (SAS version - Can be imported and read using RO:
 - [**BRFSS Dataset 2018**](https://www.cdc.gov/brfss/annual_data/2018/files/LLCP2018XPT.zip)

* General info and mapping and summary statistics about each variable:
 - [**2018 Info and Codebook report**](https://www.cdc.gov/brfss/annual_data/annual_2018.html): 
