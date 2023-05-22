#write function in here

#' human readable title here. check similar packages.
#'
#' @param x vector or NULL; the values to be matched
#' @param table vector of NULL; values to be matched against
#' @return a logical vector
#' @export
#'
#' @examples
#'
#'
#'
#'
#'

'%nin%' <- function(x, table) !match(x, table, nomatch = 0)
