test_that("This is an example test", {
  a <- 2
  b <- 10
  expect_equal(a * b, 20)
})

library(testthat)

test_that("coefficient of gdppercap is equal to 0,00076",{
  # Extract coefficients from the model
  coefficients <- coef(model)
  # Extract the coefficient for 'gdpPercap'
  gdp_coefficient <- coefficients["gdpPercap"]
  # Check if the coefficient is equal to the expected value
  expect_equal(unname(gdp_coefficient), 0.00076,
               tolerance = 0.01)
})

test_that("number of oberservation is equal to 1704",{
  num_obs_data <- nrow(data)

# Check if the number of observations in the data equals 1704
expect_equal(num_obs_data,1704)
})


library(data.table)
library(testdat)


test_that("Combination of 'year' and 'country' creates a unique id", {
  expect_unique(data = data, c(year,country))
  
})

test_that("gdpPercap fall between 0 and 1e6",{
expect_range(data = data, gdpPercap, 0, 1e6)
})

test_that("values for continent",{
  expect_values(data=data,continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"))
})


