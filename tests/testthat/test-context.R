
library(tidyverse)    

data_summary <- function(x, na.rm = TRUE){
    if(!na.rm & any(is.na(x))){
        warning("Data contains NA values!")
    }
        num_data <- select_if(x, .predicate=is.numeric)
        map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID") 
}                                                                                             
     
# Use context() and test_that() to group the tests below together 
# -> removed as context() is now deprecated in favour of file names

#context("Test data_summary") 

test_that("data_summary handles errors correctly", {
  # Create a vector containing the numbers 1 through 10
  my_vector <- 1:10

  # Test if running data_summary() on this vector returns an error
  try(expect_error(data_summary(my_vector)))
    
  # Use expect_warning to formally test that not removing NAs in datasets with turns a warning
  expect_warning(data_summary(airquality, na.rm = FALSE))
  })

