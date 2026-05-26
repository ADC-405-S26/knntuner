test_that("Correct input yields expected kgrid", {
  result <- kgrid(1, 9, 2)
  expect_equal(result$k, c(1, 3, 5, 7, 9))
})

test_that("Kgrid yields expected dataframe", {
  result <- kgrid(1, 9, 2)
  expect_s3_class(result, "data.frame")
})


test_that("Incorrect inputs throw errors", {
  expect_error(kgrid(TRUE, 0, 0))
  expect_error(kgrid(1, 9, 0))
  expect_error(kgrid(9, 1, 2))
})
