#' Default if Missing
#' @description
#' Infix function will replace missing values with another value.
#'
#' @param x input
#' @param y replacement value for length(0) or NULL
#' @return replacement value if x is NULL
#' @export
#' @name DefaultIfMising
#' @examples
#' ## replace a NULL value with a replacement value
#'x <- NULL
#'x %||% "replacementValue"
#'print(x)
#'
#' ## replace a NULL value within a function with a replacement value
#'testFunction <- function(x=NULL, y = "bar"){
#'  x <-x %||% "foo"
#' print(c(x, y))
#'}
#'testFunction()
#'
#' ## replace x if length of x is 0
#'x <- list()
#'replacementValue <- "replacement"
#'output <- x %||% replacementValue
#'print(output)
#'
#'
`%||%` <- function(x, y) if (is.null(x) || length(x) == 0) y else x
