#' Title
#'
#' @param min_k
#' @param max_k
#' @param step
#'
#' @returns
#' @export
#'
#' @examples
kgrid <- function(min_k, max_k, step) {
  expand.grid(k = seq(min_k, max_k, by = step))
}
