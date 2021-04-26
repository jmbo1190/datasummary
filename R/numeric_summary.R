#' Numeric Summaries
#' Summarises numeric data and returns a data frame containing the minimum value, median, standard deviation, and maximum value.
#'
#' @param x a numeric vector containing the values to summarize.
#' @param na.rm a logical value indicating whether NA values should be stripped before the computation proceeds.
#' @importFrom stats median
#' @importFrom stats sd
numeric_summary <- function(x, na.rm) {

    # Include an error if x is not numeric
    if(!is.numeric(x)){
        stop("Data must be numeric")
    }

    # Create data frame
    data.frame( min = min(x, na.rm = na.rm),
                median = median(x, na.rm = na.rm),
                sd = sd(x, na.rm = na.rm),
                max = max(x, na.rm = na.rm))
}
