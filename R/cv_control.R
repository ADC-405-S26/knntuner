#' Create Cross-Validation Settings
#'
#' @param method Type of cross validation
#' @param number Amount of folds to split the training data into
#' @param repeats Amount of times repeating the cross validation process
#' @param classProbs Logical value indicating whether class probabilities should be computed
#' @param summaryFunction A function used to calculate model performance metrics
#'
#' @returns A `trainControl` object that can be passed to `caret::train()`.
#' @export
#'
#' @examples
#' cv_control()
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
