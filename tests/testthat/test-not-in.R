test_that("'%nin%' returns FALSE if integer is in list of ints ", {
  expect_equal(1 %nin% c(1,2,3), FALSE)
})

test_that("'%nin%' returns TRUE if integer is not list of ints ", {
  expect_equal(1 %nin% c(3,4,5), TRUE)
})

test_that("Output has no NA values", {
  expect_equal(TRUE %in% c(is.na(c(1,2,3) %nin% c(3,4,5))), FALSE)
})

test_that("A seqence of numbers works for x", {
  expect_equal(TRUE %in% c(1:5 %nin% 1:10), FALSE)
})

test_that("strings work", {
  expect_equal("strings" %nin% c("strings", "and things"), FALSE)
})

test_that("if x is NULL result should be empty logical", {
  expect_equal(NULL %nin% 1:10, logical(0))
})

test_that("if table is NULL returns TRUE", {
  expect_equal("x" %nin% NULL, TRUE)
})

test_that("if search against an empty list returns TRUE",{
  expect_equal("x" %nin% list(), TRUE)
})


test_that("character numbers are matched",{
  expect_equal(as.character(0) %nin% c(0,1,2,3), FALSE)
})
