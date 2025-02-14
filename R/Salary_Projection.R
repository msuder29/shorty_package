#' Salary Projection Function
#'
#' Function will crate projection for salary growth based on a consistent merit increase and bonus struction over input period of time
#'
#' @param starting_salary numeric value representing Starting Salary
#' @param Bonus_pct numeric value that represents annual bonus as a percentage
#' @param Growth_average numeric value that represents expected yearly merit raise (defualts to 3%)
#' @param timeframe numeric value that represents number of years for projection
#'
#' @export

Salary_Projection <- function(starting_salary, Bonus_pct, Growth_average = 0.03, timeframe) {
  
  timeframe <- timeframe
  
  starting_salary <- starting_salary
  
  Bonus_pct <- Bonus_pct
  
  Growth_average <- Growth_average
  
  career_trajectory <- data.frame(
    Year = 0
    ,Salary = starting_salary
    ,Bonus = Bonus_pct
    ,Yearly_Increase = Growth_average
    ,Total_Yearly_Comp = starting_salary + (starting_salary * Bonus_pct)
  )
  
  counter <- 0
  
  while (counter < timeframe) {
    
    counter <- counter + 1
    
    cs <- max(career_trajectory$Salary)
    
    sal_inc <- cs + (Growth_average * cs)
    
    tycomp <- sal_inc + (sal_inc * .15)
    
    temp <- data.frame(
      Year = counter
      ,Salary = sal_inc
      ,Bonus = Bonus_pct
      ,Yearly_Increase = Growth_average
      ,Total_Yearly_Comp = tycomp
    )
    
    career_trajectory <- rbind(career_trajectory, temp)
    
    
    
  }
  
  
  assign("Career_Projection",career_trajectory,envir = .GlobalEnv)
  View(Career_Projection)
  
  
}



