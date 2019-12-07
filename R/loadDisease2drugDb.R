
#' This is for load disease2drug.db
#'
#' @param DEpath pkgname
#'
#' @importFrom RSQLite dbConnect
#' @importFrom RSQLite SQLite
#'
#' @export
#'
#'
disease2drugDb <- function(DEpath) {
  ## connection

  db <- RSQLite::dbConnect(RSQLite::SQLite(),
                           paste0(
                             system.file("extdata", package = "DEpath"),
                             paste0("/", "disease2drug.db")
                           ))
  return(db)

  # disconnection
  dbDisconnect()
}

## load disease2drug.db
loadDisease2drugDb <- function (DEpath) {
  obj <- disease2drugDb(DEpath)
  return(obj)
}
