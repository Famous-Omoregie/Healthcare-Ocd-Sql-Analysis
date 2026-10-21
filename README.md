# Healthcare OCD Patient Analysis Using MySQL

## Project Overview

This project uses MySQL to analyse a patient dataset relating to
obsessive-compulsive disorder (OCD).

The analysis explores patient demographics, obsession and compulsion
scores, and monthly diagnosis patterns. It demonstrates how SQL can
be used to transform patient-level data into structured analytical
insights.

## Project Objectives

The project addresses five analytical questions:

1. Calculate patient counts by gender and the average obsession score
   for each gender.
2. Calculate the percentage distribution of patients by gender.
3. Analyse the monthly distribution of OCD diagnoses.
4. Identify the most common obsession type and calculate its average
   obsession score.
5. Identify the most common compulsion type and calculate its average
   compulsion score.

## Tools Used

- MySQL
- MySQL Workbench
- SQL

## SQL Skills Demonstrated

- Data exploration using SELECT
- Aggregation using COUNT() and AVG()
- Grouping using GROUP BY
- Sorting using ORDER BY
- Rounding results using ROUND()
- Common Table Expressions (CTEs)
- JOIN operations
- Percentage calculations
- Date formatting and monthly aggregation
- Ranking categories using ORDER BY and LIMIT
- Data type modification using ALTER TABLE

## Analytical Approach

The analysis begins by exploring the patient dataset and preparing
the diagnosis date column for date-based analysis.

SQL queries are then used to aggregate patient characteristics,
calculate demographic percentages, examine monthly diagnosis
patterns, and identify the most frequent obsession and compulsion
categories.

## Key Findings

## Key Findings

### 1. Patient Distribution by Gender
- Male records: 753 (50.2%).
- Female records: 747 (49.8%).
- Average obsession score: 19.90 for males and 20.20 for females.

The dataset showed a nearly equal gender distribution.

### 2. Gender Percentage Distribution
Male records accounted for 50.2% of the dataset, while female
records accounted for 49.8%.

### 3. Monthly Diagnosis Patterns
The diagnosis dates ranged from November 2013 to November 2022.
March 2018 had the highest number of diagnosis records (25),
followed by October 2018 (24) and December 2015 (23).

### 4. Most Common Obsession Type
Harm-related was the most frequent obsession type, with 333
records and an average obsession score of 20.65.

### 5. Most Common Compulsion Type
Washing was the most frequent compulsion type, with 321 records
and an average compulsion score of 19.63.

## Data Note
The dataset contains 1,500 records and 1,393 distinct Patient IDs.
The analysis uses record counts, which may differ from counts
of unique individuals. Findings describe this dataset and should
not be interpreted as evidence of causation or generalised to
the wider population without further validation.

## Limitations

- The analysis is limited to the variables available in the dataset.
- The findings describe patterns in the available records and do
  not establish causation.
- The results should not be generalised to the wider population
  without further evidence.

## Author

Famous Omoregie
