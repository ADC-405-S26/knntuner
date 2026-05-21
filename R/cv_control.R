cv_control <- function(method = "repeatedcv",
                       number = 5,
                       repeats = 1,
                       classProbs = TRUE,
                       summaryFunction = caret::twoClassSummary) {
  caret::trainControl(
    method = method,
    number = number,
    repeats = repeats,
    classProbs = classProbs,
    summaryFunction = summaryFunction
  )
}
