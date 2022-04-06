#' Oppostie of Intersect
#'
#' To find the non-duplicated elements between two or more vectors
#'
#' @param x Dataframe 1
#' @param y Dataframe 2
#'
#'
#'
#' @export
outersect <- function(x, y, ...) {
  big.vec <- c(x, y, ...)
  duplicates <- big.vec[duplicated(big.vec)]
  setdiff(big.vec, unique(duplicates))
}
