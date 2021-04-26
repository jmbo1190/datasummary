
test_that("data_summary throws errors when passed a vector", {
my_vector <- 1:10

# Apply data_summary() to this vector
# data_summary(my_vector)
# Create a vector containing the numbers 1 through 10

# Test if running data_summary() on this vector returns an error
try(expect_error(data_summary(my_vector)))
})

