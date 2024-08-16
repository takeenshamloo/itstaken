library(tidyverse)
#' Shows you the dollar value of a stock portfolio of someone who has never invested their money.
#'
#' @return Nothing, but it does print a plot
#' @export
#'
#' @examples myStockPortfolio()
myStockPortfolio <- function(){
  year <- seq(2000, 2024, 1)
  dollarAmt <- rep(0, 25)
  dfOfStocks <- data.frame(year = year, dollarAmt = dollarAmt)
  ggplot(dfOfStocks, aes(x = year, y = dollarAmt)) +
    geom_point() +
    geom_line(color = "lightblue") +
    labs(x = "Year", y = "Dollar Amount (USD)", title = "My Stock Portfolio") +
    theme_minimal()
}
