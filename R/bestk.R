bestk <- function(model){
  model$results |>
    filter(k == model$bestTune$k)
}
