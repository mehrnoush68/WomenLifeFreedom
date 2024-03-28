#### Preamble ####
# Purpose: Downloads the data from Kaggle
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: Download the raw data from Kaggle (https://www.kaggle.com/datasets/justin2028/daily-statistics-of-the-2022-iran-protests?resource=download)


#### Workspace setup ####
#install.packages(c("readr", "arrow"))
library(readr)
library(arrow)

# I accessed data from the Kaggle website for Daily Statistics of the 2022 Iran Protests. Here is the link to the data set: https://www.kaggle.com/datasets/justin2028/daily-statistics-of-the-2022-iran-protests?resource=download
# The data is behind a sign-in.
# To download the data, I scrolled down and download the Iran Protests Dataset (Ver 2.21.23).csv, and place it in my project data folder.

#### Download data ####
raw_data <- read_csv("data/raw_data/Iran-protests-raw-data.csv")

#### Save data ####
# change Iran-protests-raw-data to whatever name you assigned when you downloaded it.
write_csv(raw_data, "data/analysis_data/Protest_data.csv") 

# Writing data to a Parquet file
arrow::write_parquet(raw_data, "data/analysis_data/Protest_data.parquet")

# Reading data from the Parquet file
Protest_data <- arrow::read_parquet("data/analysis_data/Protest_data.parquet")

# Displaying the read data
print(Protest_data)
