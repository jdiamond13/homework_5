#' Michael Jordan Points
#' @param yr The year of interest
#' @return The number of points Michael Jordan scored in \code{yr} year
#' @examples
#' mjs_pts(1995)

mjs_pts <- function(yr){

  filtered_by_yr_mj <- filter(d, Year == yr, Player == "Michael Jordan*", na.rm=TRUE)

  if (nrow(filter(d, Year == yr, Player == "Michael Jordan*")) == 0) {
    return(NA)
  } else {
    return(sum(filtered_by_yr_mj$PTS))
  }
}
