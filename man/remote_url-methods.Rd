% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remote.r
\docType{methods}
\name{remote_url}
\alias{remote_url}
\alias{remote_url,git_repository-method}
\title{Get the remote url for remotes in a repo}
\usage{
remote_url(repo, remote = remotes(repo))

\S4method{remote_url}{git_repository}(repo, remote = remotes(repo))
}
\arguments{
\item{repo}{The repository to get remote urls from}

\item{remote}{Character vector with the remotes to get the url
from. Default is the remotes of the repository.}
}
\value{
Character vector with remote_url for each of the remote
}
\description{
Get the remote url for remotes in a repo
}
\examples{
\dontrun{
## Initialize a temporary repository
path <- tempfile(pattern="git2r-")
dir.create(path)
repo <- init(path)

## Create a user and commit a file
config(repo, user.name="Alice", user.email="alice@example.org")
writeLines("Hello world!", file.path(path, "example.txt"))
add(repo, "example.txt")
commit(repo, "First commit message")

## Add a remote
remote_add(repo, "playground", "https://example.org/git2r/playground")
remotes(repo)
remote_url(repo, "playground")

## Rename a remote
remote_rename(repo, "playground", "foobar")
remotes(repo)
remote_url(repo, "foobar")

## Remove a remote
remote_remove(repo, "foobar")
remotes(repo)
}
}
\keyword{methods}

