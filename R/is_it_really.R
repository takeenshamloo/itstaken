#' A function that simply asks 'Are you taken?'
#'
#' @param name A string name.
#' @param status A character status indicator ("S" = Single, "M" = Married, "D" = Divorced).
#' @param statusDuration A numeric value for the number of years this status has been in effect.
#'
#' @return Returns nothing, prints output.
#' @export
#'
#' @examples areYouTaken(name = "Jerry, status = "D", statusDuration = 10)
areYouTaken <- function(name, status = "S", statusDuration){
  tempStatus <- ""
  if (status == "S"){
    tempStatus <- "single"
  } else if (status == "M") {
    tempStatus <- "married"
  } else if (status == "D") {
    tempStatus <- "divorced"
  } else {
    stop("Status is not a valid entry")
  }

  if (!is.numeric(statusDuration)){
    stop("statusDuration is not a numeric value")
  }

  if (is.numeric(name)){
    stop("name should be a character string")
  }

  print(paste(name, "has been", tempStatus, "for", statusDuration, "years"))
}
