#' Extract the Best Performing K Value
#'
#' @param model fitted KNN model object created with `caret::train()`
#'
#' @returns A 1-row data frame containing the best-performing `k` value with cross validation results
#' @export
#'
#' @examples
#' example_model <- list(
#'   results = data.frame(k = c(1, 3, 5), Sens = c(0.70, 0.76, 0.72)),
#'   bestTune = data.frame(k = 3)
#' )
#' bestk(example_model)
bestk <- function(model) {
  checkmate::assert_list(model)
  checkmate::assert_names(names(model), must.include = c("results", "bestTune"))
  checkmate::assert_data_frame(model$results, col.names = "named")
  checkmate::assert_data_frame(model$bestTune, col.names = "named")
  checkmate::assert_names(names(model$results), must.include = "k")
  checkmate::assert_names(names(model$bestTune), must.include = "k")
  model$results[model$results$k == model$bestTune$k, ]
}
