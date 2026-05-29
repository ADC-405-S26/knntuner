# Create a K Grid to test K values

Create a K Grid to test K values

## Usage

``` r
kgrid(min_k, max_k, step)
```

## Arguments

- min_k:

  numeric value for minimum k value to test

- max_k:

  numeric value for the maximum k value to test

- step:

  numeric value for the size of each jump between k values

## Value

a data frame with one column, `k`, designed to hold tuning values

## Examples

``` r
kgrid(1, 11, 2)
#>    k
#> 1  1
#> 2  3
#> 3  5
#> 4  7
#> 5  9
#> 6 11
```
