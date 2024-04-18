#### Preamble ####
# Purpose: Tests the data
# Author: Mehrnoush Mohammadi
# Date: 17 April 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites:
  # 01-data_cleaning.R


#### Workspace setup ####
library(tidyverse)
library(readr)
library(arrow)

#### Read data ####
protest_data <- read_parquet("data/analysis_data/cleaned_protest_data.parquet")

#### Test data ####

# Test 1: Check for missing values in each dataset
missing_values <- colSums(is.na(protest_data))
print(missing_values)

# Test 2: Check for duplicate rows in the dataset
duplicate_rows <- anyDuplicated(protest_data)
print(duplicate_rows)

# Test 3: Check that the date range is within expected bounds in the dataset
protest_Date <- protest_data$Date
print(min(protest_Date))
print(max(protest_Date))

# Test 4: Check that for missing dates in the dataset
full_date_range <- seq(min(protest_Date), max(protest_Date), by = "day")
missing_dates <- setdiff(full_date_range, protest_Date)
print(missing_dates)
