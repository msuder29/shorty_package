#' Column_Compare
#'
#' Function will compare column names of two data frames to determine if columns match or not
#'
#' @param df1 first data frame that you want to compare as a base
#' @param df2 second data frame that you want to compare if any header is missing
#' @param filtered  trigger to filter to only NA's or ull comparison
#'
#' @import tidyverse
#'
#' @export
compare_col <- function(df1, df2, filtered = "Y") {
  
  
  ## create column frame
  a <- data.frame("column_names" = matrix(unlist(colnames(df1)), byrow = T), stringsAsFactors = F)
  b <- data.frame("column_names" = matrix(unlist(colnames(df2)), byrow = T), stringsAsFactors = F)
  
  ## create new Column Name
  
  df1_name <- paste("column_names", deparse(substitute(df1)), sep = "")
  df2_name <- paste("column_names", deparse(substitute(df2)), sep = "")
  
  
  ## comapre column names
  c <- left_join(a, b, keep = T, by = "column_names") %>% 
    rename(df1_name = "column_names.x",
           df2_name = "column_names.y")
  
  
  ## filter Y/N
  
  f <- filtered
  
  ## filterd to NA
  
  if (f == "Y") {
    d <- c %>% filter(is.na(df2_name))
  } else {
    d <- c
  }
  
  d
}
