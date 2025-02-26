#' Payback Period Function
#'
#' Function will crate a payback data frame based on initial investment, cost savings, and additional payments, output will include duration in partial years
#'
#' @param Initial_Investment numeric value representing initial investment
#' @param Cost_Savings numeric value that represent monthly Return on Investment or cost savings
#' @param Additional_Payments numeric value that represents additional monies to payback investment
#'
#'
#' @export

payback_plan <- function(Initial_Investment, Cost_Savings, Additional_Payments = 0) {
  initial_investment <- Initial_Investment
  cost_savings <- Cost_Savings
  add_payment <- Additional_Payments
  
  # Initialize the data frame
  ROI <- data.frame(
    Months = 0,
    Investment = initial_investment,
    Savings = 0,
    Delta = initial_investment
  )
  
  payback <- 0
  counter <- 0
  
  while (payback < initial_investment) {
    counter <- counter + 1
    payback <- payback + cost_savings + add_payment
    
    temp <- data.frame(
      Months = counter,
      Investment = NA,
      Savings = payback,
      Delta = initial_investment - payback
    )
    
    ROI <- rbind(ROI, temp)
  }
  
  assign("Payback_DF", ROI, envir = .GlobalEnv)
  # View(Payback_DF)
  
  return(max(ROI$Months) / 12)
}
  
  

