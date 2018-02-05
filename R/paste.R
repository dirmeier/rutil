# rutil: Some R utilities
#
# Copyright (C) Simon Dirmeier
#
# This file is part of rutil.
#
# rutil is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# rutil is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with rutil. If not, see <http://www.gnu.org/licenses/>.



#' @rdname paste-methods
setGeneric(
    ".paste",
    function(lhs, rhs)
    {
        standardGeneric(".paste")
    },
    package = "rutil"
)


#' @rdname paste-methods
setMethod(
    ".paste",
    signature = signature(lhs="character", rhs="character"),
    function(lhs, rhs) paste0(lhs, rhs)
)


#' @title Do some paste operation.
#'
#' @description Do some paste operation.
#'
#' @export
#' @docType methods
#' @rdname paste-methods
#'
#' @param lhs  the left hand side
#' @param rhs  the right hand side
#'
#'
#' @return  returns a pasted value
#' @examples
#'  "a" %+% "b"
`%+%` <- function(lhs, rhs) .paste(lhs, rhs)
