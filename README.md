# # Hospital Resource Utilization Dashboard

## Project Overview

This project analyzes healthcare data to understand hospital resource utilization and patient visit patterns between 2010 and 2020.

Using SQL for data analysis and Power BI for visualization, I explored patient visits, hospital utilization, encounter types, inpatient admissions, and length of stay to identify patterns that could support better healthcare resource planning and decision-making.

## Project Objective

The objective of this project was to use healthcare data to understand how hospital resources were being utilized and identify patterns in patient demand across different hospitals, years, and encounter types.

## Business Questions

The analysis was designed to answer the following questions:

* How many patient visits occurred each year?
* Which hospitals had the highest number of patient visits?
* What types of healthcare encounters were most common?
* How many inpatient admissions occurred?
* What was the average length of stay?
* How did hospital utilization vary between 2010 and 2020?

## Tools Used

* SQL Server — Data querying and analysis
* Excel — Data review and organization
* Power BI — Data visualization and dashboard development
* GitHub — Project documentation and portfolio

## Data Preparation

The dataset was reviewed and prepared for analysis before building the dashboard.

Key preparation steps included:

* Reviewing the available healthcare tables and their relationships
* Removing duplicate records where necessary
* Standardizing date formats
* Creating year fields from relevant date columns
* Joining relevant tables using SQL
* Preparing the data required for hospital utilization analysis

## SQL Analysis

SQL was used to explore the healthcare dataset and answer the project's business questions.

The SQL queries used for the analysis are available in the `sql` folder.

## Dashboard

The Power BI dashboard provides an interactive view of hospital resource utilization, including patient visits, encounter types, hospital utilization, admissions, and length of stay.

A preview of the dashboard is shown below:

*Dashboard screenshot will be added here.*

## Key Findings

The analysis identified several patterns in hospital utilization:

* Patient visits varied across the years analyzed, with 2020 showing a notable decline in patient visits.
* Hallmark Health System recorded the highest number of patients among the organizations analyzed, with 1,224 patients.
* Ambulatory encounters represented the largest encounter category in the dataset.
* There were 1,141 inpatient admissions recorded in the analysis.
* The average length of stay across the period analyzed was approximately 1 day.

## Recommendations

Based on the findings, healthcare organizations can:

* Monitor patient visit trends to identify periods of changing demand.
* Use hospital utilization patterns to support staffing and resource allocation decisions.
* Monitor encounter patterns to better understand where healthcare demand is concentrated.
* Track length of stay and inpatient utilization to identify opportunities for improving resource use.

## Project Files

| Folder/File    | Description                        |
| -------------- | ---------------------------------- |
| `sql/`         | SQL queries used for the analysis  |
| `dashboard/`   | Power BI dashboard                 |
| `screenshots/` | Dashboard screenshots              |
| `README.md`    | Project overview and documentation |

## Note on Data

This project uses synthetic healthcare data for learning and portfolio purposes. No real patient information was used.

