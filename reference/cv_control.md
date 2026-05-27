# Create Cross-Validation Settings

Create Cross-Validation Settings

## Usage

``` r
cv_control(
  method = "repeatedcv",
  number = 5,
  repeats = 1,
  classProbs = TRUE,
  summaryFunction = caret::twoClassSummary
)
```

## Arguments

- method:

  Type of cross validation

- number:

  Amount of folds to split the training data into

- repeats:

  Amount of times repeating the cross validation process

- classProbs:

  Logical value indicating whether class probabilities should be
  computed

- summaryFunction:

  A function used to calculate model performance metrics

## Value

A `trainControl` object that can be passed to
[`caret::train()`](https://rdrr.io/pkg/caret/man/train.html).

## Examples

``` r
cv_control()
#> $method
#> [1] "repeatedcv"
#> 
#> $number
#> [1] 5
#> 
#> $repeats
#> [1] 1
#> 
#> $search
#> [1] "grid"
#> 
#> $p
#> [1] 0.75
#> 
#> $initialWindow
#> NULL
#> 
#> $horizon
#> [1] 1
#> 
#> $fixedWindow
#> [1] TRUE
#> 
#> $skip
#> [1] 0
#> 
#> $verboseIter
#> [1] FALSE
#> 
#> $returnData
#> [1] TRUE
#> 
#> $returnResamp
#> [1] "final"
#> 
#> $savePredictions
#> [1] FALSE
#> 
#> $classProbs
#> [1] TRUE
#> 
#> $summaryFunction
#> function (data, lev = NULL, model = NULL) 
#> {
#>     if (length(lev) > 2) {
#>         stop(paste("Your outcome has", length(lev), "levels. The twoClassSummary() function isn't appropriate."))
#>     }
#>     requireNamespaceQuietStop("pROC")
#>     if (!all(levels(data[, "pred"]) == lev)) {
#>         stop("levels of observed and predicted data do not match")
#>     }
#>     rocObject <- try(pROC::roc(data$obs, data[, lev[1]], direction = ">", 
#>         quiet = TRUE), silent = TRUE)
#>     rocAUC <- if (inherits(rocObject, "try-error")) 
#>         NA
#>     else rocObject$auc
#>     out <- c(rocAUC, sensitivity(data[, "pred"], data[, "obs"], 
#>         lev[1]), specificity(data[, "pred"], data[, "obs"], lev[2]))
#>     names(out) <- c("ROC", "Sens", "Spec")
#>     out
#> }
#> <bytecode: 0x55f5a2dc3c60>
#> <environment: namespace:caret>
#> 
#> $selectionFunction
#> [1] "best"
#> 
#> $preProcOptions
#> $preProcOptions$thresh
#> [1] 0.95
#> 
#> $preProcOptions$ICAcomp
#> [1] 3
#> 
#> $preProcOptions$k
#> [1] 5
#> 
#> $preProcOptions$freqCut
#> [1] 19
#> 
#> $preProcOptions$uniqueCut
#> [1] 10
#> 
#> $preProcOptions$cutoff
#> [1] 0.9
#> 
#> 
#> $sampling
#> NULL
#> 
#> $index
#> NULL
#> 
#> $indexOut
#> NULL
#> 
#> $indexFinal
#> NULL
#> 
#> $timingSamps
#> [1] 0
#> 
#> $predictionBounds
#> [1] FALSE FALSE
#> 
#> $seeds
#> [1] NA
#> 
#> $adaptive
#> $adaptive$min
#> [1] 5
#> 
#> $adaptive$alpha
#> [1] 0.05
#> 
#> $adaptive$method
#> [1] "gls"
#> 
#> $adaptive$complete
#> [1] TRUE
#> 
#> 
#> $trim
#> [1] FALSE
#> 
#> $allowParallel
#> [1] TRUE
#> 
```
