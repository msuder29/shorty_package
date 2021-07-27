#' rolling_x_analysis
#'
#' Function will create specified function for rolling analysis over time. This function is used as template to create new function specific to analysis
#'
#' @param analysis Type of analysis that needs rolling period. EX mean, standard Deviation, Sum, etc. as text
#' @param time_frame Window of time for rolling function as number
#' 
#'
#' @import tibbletime
#'
#' @export
rolling_x_analysis <- function(analysis, time_frame) {

 rollify(.f = analysis, window = time_frame)
  
}
