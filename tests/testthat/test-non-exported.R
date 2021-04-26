
test_that("numeric_summary results match expected values", {
# Expected result                                                                     
expected <- data.frame(min = 14L, median = 19L, sd = 3.65148371670111, max = 24L)      
                                                                                       
# Create variable result by calling numeric_summary() on the temp column of the er dataset
result <- datasummary:::numeric_summary(weather$Temp, na.rm = TRUE)                    
                                                                                       
# Test that the value returned matches the expected value                              
expect_equal(result, expected)   
})

