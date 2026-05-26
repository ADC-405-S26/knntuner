test_that("correct input yields best k row", {
  example_model <- list(
    results = data.frame(k = c(1, 3, 5), Sens = c(0.70, 0.76, 0.72)),
    bestTune = data.frame(k = 3)
  )

  result <- bestk(example_model)
  expected <- example_model$results[example_model$results$k == example_model$bestTune$k, ]

  expect_equal(result, expected)
})

test_that("correct input yields expected data frame", {
  example_model <- list(
    results = data.frame(k = c(1, 3, 5), Sens = c(0.70, 0.76, 0.72)),
    bestTune = data.frame(k = 3)
  )

  result <- bestk(example_model)

  expect_s3_class(result, "data.frame")
  expect_equal(nrow(result), 1)
})

test_that("incorrect inputs throw errors", {
  expect_error(bestk(1))
  expect_error(bestk(c("five", "kittens")))
})
