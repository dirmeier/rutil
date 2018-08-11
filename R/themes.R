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


#' @title Theme for slide plots
#'
#' @description This theme changes font sizes for plots uses in slides.
#' @export
#' @import ggplot2
slides_theme <- function()
{
    ggplot2::theme_minimal() +
      ggplot2::theme(
        text = ggplot2::element_text(size=16, family="Arial Narrow"),
        axis.title.x     = ggplot2::element_text(size=30),
        axis.title.y     = ggplot2::element_text(size=30),
        axis.text.x      = ggplot2::element_text(size=25),
        axis.text.y      = ggplot2::element_text(size=25),
        plot.title       = ggplot2::element_text(size=30),
        legend.text      = ggplot2::element_text(size=25),
        legend.title     = ggplot2::element_text(size=30),
        strip.text       = ggplot2::element_text(size=25),
        panel.grid.minor = ggplot2::element_blank())
}


#' @title Theme for paper plots
#'
#' @description This theme changes font sizes for plots uses in papers
#' @export
#' @import ggplot2
paper_theme <- function()
{
    ggplot2::theme_minimal() +
        ggplot2::theme(
            text = ggplot2::element_text(size=16, family="Arial Narrow"),
            axis.title.x     = ggplot2::element_text(size=10),
            axis.title.y     = ggplot2::element_text(size=30),
            axis.text.x      = ggplot2::element_text(size=25),
            axis.text.y      = ggplot2::element_text(size=25),
            plot.title       = ggplot2::element_text(size=30),
            legend.text      = ggplot2::element_text(size=25),
            legend.title     = ggplot2::element_text(size=30),
            strip.text       = ggplot2::element_text(size=25),
            panel.grid.minor = ggplot2::element_blank())
}

#' @title Theme adopted from Jana
#'
#' @description This theme changes font sizes for plots used in papers
#'
#' @param title.hjust  hjust of title
#' @param legend_pos position of legend
#' @export
#' @import ggplot2
jana_theme <- function(title.hjust = 0, legend_pos="bottom")
{
    ggplot2::theme(
        axis.text    = ggplot2::element_text(size = 8),
        axis.title.x = ggplot2::element_text(size = 8, face = "bold",
                                             hjust = 1),
        axis.title.y = ggplot2::element_text(size = 8, face = "bold"),
        plot.title   = ggplot2::element_text(size = 8, face = "bold",
                                             hjust = title.hjust),
        plot.margin  = rep(grid::unit(1, "cm"), 4),
        strip.text.x = ggplot2::element_text(size = 8),
        strip.text.y = ggplot2::element_text(size = 8),
        axis.line    = ggplot2::element_blank(),
        legend.position = legend_pos,
        legend.text  = ggplot2::element_text(size = 8),
        legend.title = ggplot2::element_text(size = 8)) +
    cowplot::background_grid(
            major = "y", minor = "y",
            colour.major = "grey80", colour.minor = "grey90",
            size.major = 0.2, size.minor = 0.2)
}


#' @title Color palette
#'
#' @description Collection of discrete color palettes
#' @export
#' @param set  the color set to use
#' @param alpha  alpha
manual_discrete_colors <- function(set=c("a"), alpha=1)
{
    set <- match.arg(set)
    switch(set,
      "a"=c("#111111", "#65ADC2", "#233B43", "#E84646", "#C29365",
            "#362C21", "#316675", "#168E7F", "#109B37")
    )
}


#' @title Fill scale
#'
#' @description Several fill scalings.
#' @export
#' @import ggsci
#' @param set  the color set to use
scale_fill_continuous <- function(set="blue")
{
    ggsci::scale_fill_material(set)
}


#' @title Color scale
#'
#' @description Several color scalings.
#' @export
#' @import ggsci
#' @param set  the color set to use
scale_color_continuous <- function(set="blue")
{
    ggsci::scale_color_material(set)
}
