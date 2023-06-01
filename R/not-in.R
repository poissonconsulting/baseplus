#' Non-Value Matching
#' @description
#' Infix function returns a logical vector of non-matches.
#'
#' @param x vector or NULL; the values to be matched
#' @param table  vector of NULL; values to be matched against
#' @return Returns a logical vector
#' @export
#'
#' @examples
#' ## Check if a string is not present in a list of strings.
#' "string" %nin% c("other", "words")
#'
#' ## Check if a single element is not present in the vector
#' x <- c(1, 2, 3, 4, 5)
#' is_present <- 3 %nin% x
#' print(is_present)
#'
#' ## Check if multiple elements are not present in the vector
#' x <- c(1, 2, 3, 4, 5)
#' y <- c(2, 6, 8)
#' are_not_present <- y %nin% x
#' print(are_not_present)
#'
#' ## Filter a data frame based on multiple conditions
#' df <- data.frame(
#'   ID = c(1, 2, 3, 4, 5),
#'   Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
#'   Age = c(25, 30, 22, 35, 28))
#' filtered_df <- df[df$Age %nin% c(22, 28), ]
#' print(filtered_df)
#'
'%nin%' <- function(x, table) !match(x, table, nomatch = 0)
