#' A function that has no purpose other than to scold you before quitting your r session.
#'
#' Why? more like Why not!
#'
#' @param reason A string value that is empty by default.
#'
#' @return Nothing, this function returns you to your
#' @export
#'
#' @examples closeYourRStudio("I no longer yearn for code")
closeYourRStudio <- function(reason = ""){
  if (reason == ""){
    message("You should've atleast thought of a reason to run this command...")
  } else {
    message("Why didn't you just run quit() yourself...")
  }

  message("Think about what you have done...")
  Sys.sleep(10)

  message("Please save. I'm not that heartless...")
  quit(save = "ask")
}
