#' Disease signature
#'
#' @param disease disease MeSH id
#'
#'
#' @export
#'
#'
disease2sig <- function(disease) {
  drug <-  disease2drug(disease)
  gene <-  as.data.frame(disease2gene(disease))
  pathway <-  as.data.frame(disease2path(disease))
  df <- new(
    "Disease",
    disease = disease,
    drug = drug,
    gene = gene,
    pathway = pathway

  )
  return(df)
}
