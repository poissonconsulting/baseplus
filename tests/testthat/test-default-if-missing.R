test_that("NULL values are replaced with replacementValue", {
  x <- NULL
  replacementValue <- 1
  output <- x %||% replacementValue
  expect_equal(output, 1)
})

test_that("replacement value can be a string", {
  x <- NULL
  replacementValue <- "string"
  output <- x %||% replacementValue
  expect_equal(output, replacementValue)
})

test_that("non NULL double values are not replaced", {
  x <- 1
  replacementValue <- 9
  output <- x %||% replacementValue
  expect_equal(x, 1)
})

test_that("non NULL integer values are not replaced", {
  x <- 1L
  replacementValue <- 9L
  output <- x %||% replacementValue
  expect_equal(x, 1L)
})

test_that("non NULL strings are not replaced", {
  x <- "string"
  replacementValue <- "replacement"
  output <- x %||% replacementValue
  expect_equal(output, x)
})

test_that("empty lists are replaced", {
  x <- list()
  replacementValue <- "replacement"
  output <- x %||% replacementValue
  expect_equal(output, replacementValue)
})
