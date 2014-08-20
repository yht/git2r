## git2r, R bindings to the libgit2 library.
## Copyright (C) 2013-2014 The git2r contributors
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License, version 2,
## as published by the Free Software Foundation.
##
## git2r is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License along
## with this program; if not, write to the Free Software Foundation, Inc.,
## 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

##' Fetch new data and update tips
##'
##' @rdname fetch-methods
##' @docType methods
##' @param repo the repository
##' @param name the remote's name
##' @param credentials The credentials for remote repository
##' access. Default is NULL.
##' @return invisible \code{\linkS4class{git_transfer_progress}} object
##' @keywords methods
##' @include S4_classes.r
setGeneric("fetch",
           signature = "repo",
           function(repo,
                    name,
                    credentials = NULL) standardGeneric("fetch"))

##' @rdname fetch-methods
##' @export
setMethod("fetch",
          signature(repo = "git_repository"),
          function (repo,
                    name,
                    credentials)
          {
              result <- .Call(
                  git2r_remote_fetch,
                  repo,
                  name,
                  credentials,
                  "fetch",
                  default_signature(repo))

              invisible(result)
          }
)
