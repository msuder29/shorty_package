#' Column name frame
#'
#' Function creates a dataframe that contains vector column names stored vertically
#'
#' @param x vector in Global enviornment
#'
#'
#'
#'
#' @export
column_frame <- function(x) {
  x <- x
  data.frame("column_names" = matrix(unlist(colnames(x)), byrow = T), stringsAsFactors = F)
}

