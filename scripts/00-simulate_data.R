#### Preamble ####
# Purpose: Simulates data for the datasets for Iran protest 
# Author: Mehrnoush Mohammadi
# Date: 27 March 2024
# Contact: mm.mohammadi@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tibble)

#### Simulate data ####
set.seed(853)  # For reproducibility

# Simulate data
simulated_data <- tibble(
  Date = seq(as.Date("2022-09-17"), by = "day", length.out = 138),
  death_toll = round(runif(138, min = 0, max = 10)),
  children_killed = round(runif(138, min = 0, max = 5)),
  military_security_killed = round(runif(138, min = 0, max = 3)),
  individuals_arrested = round(runif(138, min = 50, max = 100)),
  detainees_identified = round(runif(138, min = 10, max = 50)),
  students_arrested = round(runif(138, min = 0, max = 20)),
  number_of_protests = round(runif(138, min = 0, max = 10)),
  number_of_cities_involved = round(runif(138, min = 0, max = 5)),
  number_of_universities_involved = round(runif(138, min = 0, max = 5))
)

# Print the simulated data
print(simulated_data)



