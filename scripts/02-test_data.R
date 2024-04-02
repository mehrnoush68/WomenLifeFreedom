#### Preamble ####
# Purpose: Tests the data
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
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

# Test 3: Check that the date range is within expected bounds
protest_Date <- protest_data$date
print(min(protest_Date))
print(max(protest_Date))
