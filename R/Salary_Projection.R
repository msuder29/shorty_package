#' Salary Projection Function
#'
#' Function will crate projection for salary growth based on a consistent merit increase and bonus struction over input period of time
#'
#' @param starting_salary numeric value representing Starting Salary
#' @param Bonus_pct numeric value that represents annual bonus as a percentage
#' @param Growth_average numeric value that represents expected yearly merit raise (defualts to 3%)
#' @param timeframe numeric value that represents number of years for projection
#' @param inflation_rate numeric value that represents expected inflation
#'
#' @export

Salary_Projection <- function(starting_salary, Bonus_pct, Growth_average = 0.03, timeframe, inflation_rate = 0.02) {
  # Initialize the data frame
  career_trajectory <- data.frame(
    Year = 0,
    Salary = starting_salary,
    Bonus = starting_salary * Bonus_pct,
    Yearly_Increase = Growth_average,
    Total_Yearly_Comp = starting_salary + (starting_salary * Bonus_pct),
    Adjusted_Comp = starting_salary + (starting_salary * Bonus_pct)  # Initial adjusted compensation
  )
  
  # Loop to calculate salary projection
  for (year in 1:timeframe) {
    previous_salary <- career_trajectory$Salary[year]
    new_salary <- previous_salary * (1 + Growth_average)
    new_bonus <- new_salary * Bonus_pct
    total_comp <- new_salary + new_bonus
    adjusted_comp <- total_comp / ((1 + inflation_rate) ^ year)  # Adjust for inflation
    
    temp <- data.frame(
      Year = year,
      Salary = new_salary,
      Bonus = new_bonus,
      Yearly_Increase = Growth_average,
      Total_Yearly_Comp = total_comp,
      Adjusted_Comp = adjusted_comp
    )
    
    career_trajectory <- rbind(career_trajectory, temp)
  }
  
  # Return the data frame
  return(career_trajectory)
}


