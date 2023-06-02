
<!-- README.md is generated from README.Rmd. Please edit that file -->

# baseplus

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/poissonconsulting/baseplus/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/baseplus/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/baseplus/branch/main/graph/badge.svg)](https://app.codecov.io/gh/poissonconsulting/baseplus?branch=main)
<!-- badges: end -->

Baseplus aims to enhance functionality by developing novel features
derived from the foundation of baseR functions.

## Installation

To install the latest development version from
[GitHub](https://github.com/poissonconsulting/baseplus)

``` r
# install.packages("remotes")
remotes::install_github("poissonconsulting/baseplus")
```

## Examples

The infix operator `%nin%` returns a logical vector determining if x is
NOT present.

``` r
library(baseplus)
output <- "x" %nin% c("a", "b", "c")
print(output)
#> [1] TRUE
```

The infix operator `%||%` replaces NULL or length of 0 values with a
specified replacement value.

``` r
library(baseplus)
x <- NULL
x <- x %||% "replacementValue"
print(x)
#> [1] "replacementValue"
```

## Inspiration

- base

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/baseplus/issues). [Pull
requests](https://github.com/poissonconsulting/baseplus/pulls) are
always welcome.

## Code of Conduct

Please note that the baseplus project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
