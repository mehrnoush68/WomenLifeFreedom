#### Preamble ####
# Purpose: Tests the data
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites:
  # 01-download_data.R
  # 02-data_cleaning.R


#### Workspace setup ####
library(tidyverse)
library(readr)

#### Test data ####
protest_data <- read_csv(file = "data/cleaned_data/cleaned_Protest_data.csv", show_col_types = FALSE)

# Test 1: Check for missing values in each dataset
missing_values <- colSums(is.na(protest_data))
print(missing_values)

# Test 2: Check for duplicate rows in the dataset
duplicate_rows <- anyDuplicated(protest_data)
print(duplicate_rows)

# Test 3: Check that the date range is within expected bounds
protest_Date <- as.Date(protest_data$Date, format = "%m/%d/%Y")
print(min(protest_Date))
print(max(protest_Date))
