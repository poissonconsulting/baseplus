test_that("returns FALSE if int is in list of ints", {
  expect_equal(1L %nin% c(1L, 2L, 3L), FALSE)
})

test_that("returns TRUE if int is not list of ints", {
  expect_equal(1L %nin% c(3L, 4L, 5L), TRUE)
})

test_that("returns FALSE if double is in list of doubles", {
  expect_equal(1 %nin% c(1, 2, 3), FALSE)
})

test_that("returns TRUE if double is not list of doubles", {
  expect_equal(1 %nin% c(3, 4, 5), TRUE)
})

test_that("output has no NA values", {
  output <- c(1, 2, 3) %nin% c(3, 4, 5)
  expect_equal(is.na(output), c(FALSE, FALSE, FALSE))
})

test_that("input and search a seqence of numbers", {
  output <- seq(1, 3, 1) %nin% seq(1, 3, 1)
  expect_equal(output,c(FALSE, FALSE, FALSE))
})

test_that("output is a logical vector", {
  output <-  c(1, 2, 3) %nin% c(4, 5, 6)
  expect_type(output, "logical")
})

test_that("inverse is calculated correctly", {
  output <-  !(c(1) %nin% c(4, 5, 6))
  expect_equal(output, FALSE)
})

test_that("strings search", {
  output <- "strings" %nin% c("strings", "and things")
  expect_equal(output, FALSE)
})

test_that("strings are case sensitive", {
  output <- "STRINGS" %nin% c("strings", "and things")
  expect_equal(output, TRUE)
})

test_that("if input is NULL result is an empty logical", {
  output <- NULL %nin% 1:10
  expect_equal(output, logical(0))
})

test_that("if table is NULL returns TRUE", {
  expect_equal("x" %nin% NULL, TRUE)
})

test_that("search against an empty list returns TRUE", {
  expect_equal("x" %nin% list(), TRUE)
})

test_that("character numbers are matched to ints", {
  output <- as.character(0) %nin% c(0L, 1L, 2L, 3L)
  expect_equal(output, FALSE)
})

test_that("ints matched to character numbers", {
  output <- 1L %nin% as.character(c(0, 1, 2, 3))
  expect_equal(output, FALSE)
})

test_that("character numbers are matched to ints", {
  output <- as.character(0) %nin% c(0L, 1L, 2L, 3L)
  expect_equal(output, FALSE)
})

test_that("character number matched to doubles", {
  output <- as.character(1) %nin%  c(1, 2, 3)
  expect_equal(output, FALSE)
})

test_that("character number matched to ints", {
  output <- as.character(1) %nin%  c(1L, 2L, 3L)
  expect_equal(output, FALSE)
})
