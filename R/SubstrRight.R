#' Substring Right
#'
#' Desgined to mimic the SQL and Excel function Right
#'
#'
#' @param x is character string looking to rubset from end of string
#' @param n number of characters that user is looking to capture from end of string
#'
#' @export
substrRight <- function(x, n) {
  substr(x, nchar(x) - n + 1, nchar(x))
}


