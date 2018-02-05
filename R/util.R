
#' @title Compute the number of unique elements
#'
#' @description Compute the number of unique elements
#'
#' @export
#' @docType methods
#' @rdname n_uniq-methods
#'
#' @param obj  object to compute distinct elements
#'
#'
#' @return  the number of uniq elements
#' @examples
#'  n_uniq(c(2, 3 ,2))
n_uniq <- function(obj) UseMethod("n_uniq")


#' @export
#' @method n_uniq matrix
n_uniq.matrix <- function(obj)
{
    nrow(unique(obj))
}


#' @export
#' @method n_uniq data.frame
n_uniq.data.frame <- n_uniq.matrix


#' @export
#' @method n_uniq default
n_uniq.default <- function(obj)
{
    length(unique(obj))
}
