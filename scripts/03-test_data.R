#### Preamble ####
# Purpose: Downloading and saving the data from OpenData Toronto for Police Race and Identity Based Data Collection: Arrests & Strip Searches
# Author: Akshat Aneja
# Date: 23 September 2024
# Contact: akshat.aneja@mail.utoronto.ca
# License: MIT
# Pre-requisites: none
# Datasets: https://open.toronto.ca/dataset/police-race-and-identity-based-data-collection-arrests-strip-searches/


#### Workspace setup ####
library(tidyverse)


#### Test data ####
arrest_data <- read.csv("data/analysis_data/analysis_data.csv")

arrest_data$arrest_year == as.numeric(arrest_data$arrest_year)
arrest_data$booked == as.numeric(arrest_data$booked)
arrest_data$search_reason == as.numeric(arrest_data$search_reason)

class(arrest_data$age_group) == "character"
class(arrest_data$perceived_race) == "character"
class(arrest_data$minor) == "character"

booked_values <- all(arrest_data$booked >= 0 & arrest_data$booked <= 1)
arrest_year_values <- all(arrest_data$arrest_year >= 2020 & arrest_data$arrest_year <= 2021)
search_reason_values <- all(arrest_data$search_reason >= 0 & arrest_data$search_reason <= 1)



