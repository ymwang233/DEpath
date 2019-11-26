#' Enrichment of pathways associated with drug combinations
#'
#' @param druglist_meshid Drug combination of meshid
#'
#' @return data.frame
#' @export enrichGO
#' @export MeSH.Hsa.eg.db
#' @export org.Hs.eg.db
#'

#'
path <- function(druglist_meshid) {
  meshid2geneid <- select(
    MeSH.Hsa.eg.db,
    keys = druglist_meshid,
    keytype = "MESHID",
    columns = c("MESHID", "GENEID")
  )

  ego <- clusterProfiler::enrichGO(
    gene = meshid2geneid$GENEID,
    keyType = "ENTREZID",
    OrgDb = "org.Hs.eg.db",
    ont = "ALL",
    pAdjustMethod = "BH",
    pvalueCutoff = 0.01,
    qvalueCutoff = 0.01
  )
  return(ego)

}
