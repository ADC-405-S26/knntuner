# Extract the Best Performing K Value

Extract the Best Performing K Value

## Usage

``` r
bestk(model)
```

## Arguments

- model:

  fitted KNN model object created with
  [`caret::train()`](https://rdrr.io/pkg/caret/man/train.html)

## Value

A 1-row data frame containing the best-performing `k` value with cross
validation results

## Examples

``` r
example_model <- list(
  results = data.frame(k = c(1, 3, 5), Sens = c(0.70, 0.76, 0.72)),
  bestTune = data.frame(k = 3)
)
bestk(example_model)
#>   k Sens
#> 2 3 0.76
```
