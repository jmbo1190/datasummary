
library(tidyverse)                                                     
test_that("data_summary() throws a warning when data contain NA values and na.rm=FALSE", {                                                                       
data_summary <- function(x, na.rm = TRUE){                             
                                                                       
    if(!na.rm & any(is.na(x))){                                        
        warning("Data contains NA values!")                          
    }                                                                  
                                                                       
    num_data <- select_if(x, .predicate=is.numeric)                    
                                                                       
    map_df(num_data, .f = numeric_summary, na.rm = na.rm, .id = "ID")
                                                                       
}                                                                      
                                                                      
# Run data_summary() on the airquality dataset with na.rm set to FALSE 
data_summary(airquality, na.rm = FALSE)                                
                                                                       
# Use expect_warning to formally test this                             
expect_warning(data_summary(airquality, na.rm = FALSE))
})

