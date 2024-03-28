#### Preamble ####
# Purpose: Cleans the raw data the 2022 Iran Protests
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have manually downloaded the data.

#### Workspace setup ####
#install.packages(c("readr", "arrow"))
library(readr)
library(dplyr)
library(janitor)
library(arrow)

# I accessed data from the Kaggle website for Daily Statistics of the 2022 Iran Protests. Here is the link to the data set: https://www.kaggle.com/datasets/justin2028/daily-statistics-of-the-2022-iran-protests?resource=download
# The data is behind a sign-in.
# To download the data, I scrolled down and download the Iran Protests Dataset (Ver 2.21.23).csv, and place it in my project data folder.

#### Load data ####
raw_data <- read_csv("data/raw_data/Iran-protests-raw-data.csv")


# Clean data
cleaned_data <- raw_data |> 
  clean_names() |> 
  rename(
    arrested = number_of_individuals_arrested,
    security_killed = number_of_military_security_personnel_killed,
    children_killed = number_of_children_killed,
    detainees = number_of_detainees_identified,
    arrested_students = number_of_students_arrested,
    involved_cities = number_of_cities_involved,
    protests_number = number_of_protests,
    protestors_killed = death_toll_of_protestors
  ) |> 
  mutate(
    date = as.Date(date, format = "%m/%d/%Y"),
  ) |> 
  distinct()

# Write cleaned data to output file
write_parquet(cleaned_data, "data/analysis_data/cleaned_protest_data.parquet")

print(cleaned_data)