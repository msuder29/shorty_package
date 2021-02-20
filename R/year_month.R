#' Year_Month
#'
#' Function will create standard year month format from date field
#'
#' @param x date from dataset to be converted
#'
#'
#'
#' @import tidyverse
#'
#' @export
year_month <- function(x) {
  paste(year(x), "-", str_pad(month(x), 2, "left", "0"), sep = "")
}
