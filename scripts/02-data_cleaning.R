#### Preamble ####
# Purpose: Cleans the raw data the 2022 Iran Protests
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: need to have run 01-download_data.R

# Workspace setup
library(tidyverse)

# Read data
data <- read_csv("data/raw_data/Iran-protests-raw-data.csv")

# Clean data
# remove parentheses from column names
colnames(data) <- gsub("\\(|\\)", "", colnames(data))

# Convert data to data frame
data <- as.data.frame(data)

# Write cleaned data to output file
write_csv(data, "data/cleaned_data/cleaned_Protest_data.csv") 
