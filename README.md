
<!-- README.md is generated from README.Rmd. Please edit that file -->

# baseplus

<!-- badges: start -->
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

## Example

The infix operator ‘%nin%’ returns a logical vector determining if x is
NOT in table.

``` r
library(baseplus)
output <- "x" %nin% c("a", "b", "c")
print(output)
#> [1] TRUE
```

## Example

The infix operator ‘%\|\|%’ replaces NULL values with

``` r
library(baseplus)
output <- "x" %nin% c("a", "b", "c")
print(output)
#> [1] TRUE
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
