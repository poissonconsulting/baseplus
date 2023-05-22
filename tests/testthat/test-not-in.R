test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("'%nin%' returns FALSE if integer is in list of ints ", {
  expect_equal(1 %nin% c(1,2,3), FALSE)
})

test_that("'%nin%' returns TRUE if integer is not list of ints ", {
  expect_equal(1 %nin% c(3,4,5), TRUE)
})

test_that("Output has no NA values", {
  expect_equal(TRUE %in% c(is.na(c(1,2,3) %nin% c(3,4,5))), FALSE)
})
