#### Preamble ####
# Purpose: Cleans the raw data the 2022 Iran Protests
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: need to have run 01-download_data.R

# Workspace setup
library(tidyverse)
library(magrittr)
library(readr)
library(dplyr)

# List of input files
input_files <- c("Protest_data.csv")

# Create output file names
output_files <- paste0("cleaned_", tools::file_path_sans_ext(input_files), ".csv")

# Loop over input files
for (i in seq_along(input_files)) {
  # Read data
  data <- read_csv(file.path("data/analysis_data", input_files[i]))
  
  # Clean data
  # Example cleaning: remove parentheses from column names
  colnames(data) <- gsub("\\(|\\)", "", colnames(data))
  
  # Write cleaned data to output file
  write_csv(data, file.path("data/cleaned_data", output_files[i]))
}

