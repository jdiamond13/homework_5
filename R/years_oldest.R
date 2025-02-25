#' Oldest Player That Year
#' @param yr The year of interest
#' @return The oldest player in the league in given year sorted alphabetically
#' @examples
#' years_oldest(1995)
years_oldest <- function(yr) {
  filtered_by_yr <- filter(d, Year == yr, na.rm=TRUE)   # filter the dataframe to select only the rows where Year = yr
  max_age <- max(filtered_by_yr$Age, na.rm=TRUE)   # from the filtered data, find the max age
  filtered_by_age <- filter(filtered_by_yr, Age==max_age, na.rm=TRUE)   # filter the filtered dataframe to select only the rows where Age = max_age
  filtered_by_player <- arrange(filtered_by_age, desc(Player))   # sort by name alphabetically
  name <- filtered_by_player$Player   # select the first name alphabetically
  return(name[[1]])   # return name
}
