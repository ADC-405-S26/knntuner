test_that("Default input yields expected output", {
  cv <- cv_control()

  expect_equal(cv$method, "repeatedcv")
  expect_equal(cv$number, 5)
  expect_equal(cv$repeats, 1)
  expect_equal(cv$classProbs, TRUE)
})

test_that("Custom inputs work", {
  cv <- cv_control(
    method = "repeatedcv",
    number = 10,
    repeats = 2,
    classProbs = TRUE,
    summaryFunction = caret::twoClassSummary
  )

  expect_equal(cv$method, "repeatedcv")
  expect_equal(cv$number, 10)
  expect_equal(cv$repeats, 2)
  expect_equal(cv$classProbs, TRUE)
})


test_that("Incorrect inputs throw errors", {
  expect_error(cv_control(method = 27))
  expect_error(cv_control(number = 0))
  expect_error(cv_control(classProbs = "yes"))
  expect_error(cv_control(repeats = 0))
  expect_error(cv_control(summaryFunction = "twoClassSummary"))
})
