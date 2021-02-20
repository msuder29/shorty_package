#' Leading Zero Function
#'
#' Function will add a leading zero to a number formatted as text (Must be formatted as Character)
#'
#' @param field numeric value formatted as text that needs a leading zero
#'
#'
#'
#'
#' @export
leading_zero_date <- function(field = "a") {
  a <- field
  b <- str_pad(as.character(a), 2, "left", "0")

  paste(b)
}
