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


context("paste")


testthat::test_that("scalars are pasted correctly", {
    testthat::expect_equal("a" %+% "a", "aa")
})

testthat::test_that("scalars and vectors are pasted correctly", {
    testthat::expect_equal("a" %+% c("a", "a"), c("aa", "aa"))
})


testthat::test_that("vectors and vectors are pasted correctly", {
    testthat::expect_equal(c("a", "a") %+% c("a", "a"), c("aa" ,"aa"))
})

testthat::test_that("only characters work", {
    testthat::expect_error("a" %+% 1)
})
