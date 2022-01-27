#' Read excel conditional
#'
#' Function that display file path for location of R script in use
#'
#' @param "" there are no inputs for this function
#'
#'
#' @import rstudioapi
#'
#' @export
script_location <- function() {dirname(rstudioapi::getActiveDocumentContext()$path)}
