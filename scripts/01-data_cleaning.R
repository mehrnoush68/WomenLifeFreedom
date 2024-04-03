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
library(arrow)
library(janitor)

# I accessed data from the Kaggle website for Daily Statistics of the 2022 Iran Protests. Here is the link to the data set: https://www.kaggle.com/datasets/justin2028/daily-statistics-of-the-2022-iran-protests?resource=download
# The data is behind a sign-in.
# To download the data, I scrolled down and download the Iran Protests Dataset (Ver 2.21.23).csv, and place it in my project data folder.

#### Load data ####
raw_data <- read_csv("data/raw_data/Iran-protests-raw-data.csv")


# Clean data
cleaned_data <- raw_data |> 
  clean_names() |> 
  rename(
    Date = date,
    Arrested = number_of_individuals_arrested,
    Security.Killed = number_of_military_security_personnel_killed,
    Children.Killed = number_of_children_killed,
    Detainees = number_of_detainees_identified,
    Arrested.students = number_of_students_arrested,
    Cities = number_of_cities_involved,
    Universities = number_of_universities_involved,
    Protests = number_of_protests,
    Protesters.Killed = death_toll_of_protestors
  ) |> 
  mutate(
    Date = as.Date(Date, format = "%m/%d/%Y"),
  ) |> 
  distinct()

# Write cleaned data to output file
write_parquet(cleaned_data, "data/analysis_data/cleaned_protest_data.parquet")

print(cleaned_data)