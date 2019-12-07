#' Return the disease related genes
#'
#' @param drugList  List of interest drugs of MeSH id
#' @import MeSH.Hsa.eg.db
#' @import MeSHDbi
#' @importFrom AnnotationDbi select
#'
#' @export
#'
#'
drug2gene <- function(drugList) {

  select(
    MeSH.Hsa.eg.db,
    keys = drugList,
    keytype = "MESHID",
    columns = c("MESHID", "GENEID")
  )
}
disease2gene <- function(disease) {
  dis <- disease
  drg <- disease2drug(dis)["Drug"]$Drug
  gene <- drug2gene(drg)$GENEID
  return(gene)

}

