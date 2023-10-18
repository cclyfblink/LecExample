#' Diamond Plot
#'
#' This function produces a ggplot of \code{varx} versus \code{vary}
#'
#' @param df a data frame
#' @param varx a string name for variable x
#' @param vary a string name for variable y
#'
#' @return a scatter plot with diamond shaped points
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_point
#'
#' @examples
#' df.test <- data.frame(x = rnorm(10), y = rnorm(10))
#' diamond_plot(df.test, 'x', 'y')

diamond_plot <- function(df, varx, vary){
    ggplot(df, aes(x=get(varx), y=get(vary))) +
        geom_point(shape=23, fill="blue", color="darkred", size=3)
}
