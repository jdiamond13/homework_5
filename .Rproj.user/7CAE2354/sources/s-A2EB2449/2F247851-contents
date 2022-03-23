#' Generate Correlation Matrix For Given Year
#' @param yr The year of interest
#' @return The correlation matrix of all numeric variables in data set for given year
#' @examples
#' corr_matrix(1995)
corr_matrix <- function(yr) {
  filtered_by_yr <- filter(d, Year == yr, na.rm=TRUE)
  numeric_only <- keep(filtered_by_yr,is_numeric)
  corr_ouput <- round(cor(numeric_only),2)
  corrplot(corr_ouput, method="shade")
}
