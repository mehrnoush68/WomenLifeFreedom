#### Preamble ####
# Purpose: Cleans the raw data the 2022 Iran Protests
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: need to have run 01-download_data.R

# Workspace setup
library(tidyverse)
library(arrow)

# Read data
data <- arrow::read_parquet("data/analysis_data/protest_data.parquet")

# Clean data
# remove parentheses from column names
colnames(data) <- gsub("\\(|\\)", "", colnames(data))

# Convert data to data frame if necessary (arrow::read_parquet should return a data frame)
# data <- as.data.frame(data)

# Write cleaned data to output file
arrow::write_parquet(data, "data/cleaned_data/cleaned_Protest_data.parquet") 

