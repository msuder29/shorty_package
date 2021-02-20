#' File data frame
#'
#' Function creates a dataframe that contains file name and file path
#'
#' @param x folder path with files in folder that will be convertered to dataframe
#'
#'
#'
#'
#' @export
file_frame <- function(x) {
  x <- x
  data.frame("File_names" = basename(matrix(unlist(list.files(x,full.names = T)), byrow = T)),
             "File_path" = matrix(unlist(list.files(x,full.names = T)), byrow = T), stringsAsFactors = F)
}

