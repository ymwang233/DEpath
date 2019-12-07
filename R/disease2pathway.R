#' Enrichment of pathways associated with drug combinations
#'
#' @param druglist_meshid Drug combination of meshid
#'
#' @return data.frame
#'
#' @import MeSH.Hsa.eg.db
#' @importFrom clusterProfiler enrichGO
#' @importFrom AnnotationDbi select
#' @export

disease2path <- function(druglist_meshid) {
  genelist <- drug2gene(druglist_meshid)

  ego <- clusterProfiler::enrichGO(
    gene = genelist$GENEID,
    keyType = "ENTREZID",
    OrgDb = "org.Hs.eg.db",
    ont = "ALL",
    pAdjustMethod = "BH",
    pvalueCutoff = 0.01,
    qvalueCutoff = 0.01
  )
  return(ego@result)

}
