#' Summary of Numeric Columns
#'
#' Generate specific summaries of numeric columns in a data frame
#'
#' @param x A data frame. Non-numeric columns will be removed
#' @param na.rm A logical indicating whether missing values should be removed
#' @import purrr
#' @import dplyr
#' @importFrom tidyr gather
#' @examples
#' data_summary(iris)
#' data_summary(airquality, na.rm = FALSE)
# Running data_summary() on the airquality dataset with na.rm set to FALSE
# should produce Warnings about NA values.
#' \dontrun{
#' data_summary(airquality, na.rm = FALSE)
#' }
#' @return This function returns a \code{data.frame} including columns:
#' \itemize{
#'  \item ID
#'  \item min
#'  \item median
#'  \item sd
#'  \item max
#' }
#'
#' @export
#' @author Jean-Michel Bodart <jean-michel.bodart@businessdecision.com>
#' @seealso \link[base]{summary}
data_summary <- function(x, na.rm = TRUE){
  num_data <- select_if(x, .predicate = is.numeric)
  map_df(num_data, .f = numeric_summary, na.rm = TRUE, .id = "ID")
}
