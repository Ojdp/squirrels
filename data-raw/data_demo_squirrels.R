## code to prepare `data_demo_squirrels` dataset goes here


# Lire des données brutes
nyc_squirrels_reduced <- readr::read_csv("data-raw/nyc_squirrels_reduced.csv")
data_demo_squirrels <- dplyr::sample_n(nyc_squirrels_reduced,25)

usethis::use_data(data_demo_squirrels, overwrite= TRUE)

checkhelper::use_data_doc("data_demo_squirrels")
rstudioapi::navigateToFile("R/doc_data_demo_squirrels.R")
attachment::att_amend_desc()
