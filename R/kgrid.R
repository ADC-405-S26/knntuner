#' Create a K Grid to test K values
#'
#' @param min_k numeric value for minimum k value to test
#' @param max_k numeric value for the maximum k value to test
#' @param step numeric value for the size of each jump between k values
#'
#' @returns a data frame with one column, `k`, containing tuning values
#' @export
#'
#' @examples
#' kgrid(1, 11, 2)
kgrid <- function(min_k, max_k, step) {
  checkmate::assert_count(min_k)
  checkmate::assert_count(max_k)
  checkmate::assert_count(step)
  checkmate::assert_true(min_k > 0)
  checkmate::assert_true(max_k >= min_k)
  checkmate::assert_true(step > 0)
  expand.grid(k = seq(min_k, max_k, by = step))
}
