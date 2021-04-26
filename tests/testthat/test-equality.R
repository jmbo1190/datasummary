
test_that("data_summary results are equal to expected", {
# Create a summary of the iris dataset using data_summary()                    
iris_summary <- data_summary(iris)                                             
                                                                               
# Count how many rows are returned                                             
summary_rows <- nrow(iris_summary)                                             
                                                                               
# Use expect_equal() to test that calling data_summary() on iris returns 4 rows
expect_equal(summary_rows, 4)                                                  
                                                                               
result <- data_summary(weather)                                                
                                                                               
expect_equal(result$sd, c(2.1, 3.6), tolerance = 0.1)                          
                                                                               
expected_result <- list(ID = c("Day", "Temp"),                             
                        min = c(1L, 14L),                                      
                        median = c(4L, 19L),                                   
                        sd = c(2.16024689946929, 3.65148371670111),            
                        max = c(7L, 24L))                                      
                                                                               
expect_equal(result, expected_result, ignore_attr = TRUE)
})

