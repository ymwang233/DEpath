#' Class "disease"
#' This class represents the characteristics of the disease
#' @name Disease-class
#' @docType class
#' @slot disease disease MeSH id
#' @exportClass Disease
#'
#' @export


setClass(
  "Disease",
  slots = list(
    disease = "character",
    drug = "data.frame",
    gene = "data.frame",
    pathway = "data.frame"
  )

)
