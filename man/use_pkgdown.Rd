% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkgdown.R
\name{use_pkgdown}
\alias{use_pkgdown}
\alias{use_pkgdown_travis}
\title{Use pkgdown}
\usage{
use_pkgdown(config_file = "_pkgdown.yml", destdir = "docs")

use_pkgdown_travis()
}
\arguments{
\item{config_file}{Path to the pkgdown yaml config file}

\item{destdir}{Target directory for pkgdown docs}
}
\description{
\href{https://pkgdown.r-lib.org}{pkgdown} makes it easy to turn your package into
a beautiful website. There are two helper functions:
\itemize{
\item \code{use_pkgdown()}: creates a pkgdown config file, adds relevant files or
directories to \code{.Rbuildignore} and \code{.gitignore}, and builds favicons if
your package has a logo
\item \code{use_pkgdown_travis()}: helps you set up pkgdown for automatic deployment
on Travis-CI. As part of a general pivot away from Travis-CI and towards
GitHub Actions, the tidyverse team now builds pkgdown sites with a
workflow configured via \code{use_github_action("pkgdown")}.
\code{use_pkgdown_travis()} is still here, but is no longer actively exercised
by us. Key steps:
\itemize{
\item Creates an empty \code{gh-pages} branch for the pkgdown site to be
deployed to.
\item Prompts you about what to do next regarding Travis-CI deployment
keys and updating your \code{.travis.yml}.
}
}
}
\seealso{
\url{https://pkgdown.r-lib.org/articles/pkgdown.html#configuration}
}
