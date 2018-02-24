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


#' @title Save a plot to multiple places with multiple formats
#'
#' @description Takes a plot and saves it in multiple output folders using
#'  different file types.
#' @export
#' @import ggplot2

#' @param p  the plot to save
#' @param filename  name of the plot without suffix
#' @param out.folders vector of folders to plot
#' @param width  width of plot in inch
#' @param height  height of plot in inch
#' @param dpi  dpi
#' @param format  vector of file suffixes
saveplot <- function(p, filename,
                     out.folders,
                     width=10, height=10, dpi=720,
                     format=c("svg", "eps", "png"))
{
  for (f in out.folders)
  {
    for (i in format)
    {
      outfl <- paste0(f, filename, ".", i)
      ggplot2::ggsave(outfl,  plot=p, width=width, height=height, dpi=dpi)
    }
  }
}
