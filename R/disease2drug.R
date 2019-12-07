#' Select the disease related drugs
#'
#' @param diseaseMeshid the MeSHid of intersted disease
#'
#' @return
#' @export
#'
#'
#'
#'
disease2drug <- function(disease) {
  dis <- disease
  con <- loadDisease2drugDb(DEpath)
  res <- dbSendQuery(con,
                     sprintf("SELECT * FROM disease2drug WHERE Disease = %s%s%s",
                             "'", dis, "'"))
  return(as.data.frame(dbFetch(res)))

}

