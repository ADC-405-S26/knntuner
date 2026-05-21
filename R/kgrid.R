kgrid <- function(min_k, max_k, step) {
  expand.grid(k = seq(min_k, max_k, by = step))
}
