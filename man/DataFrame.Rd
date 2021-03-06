% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataFrame.R
\name{DataFrame}
\alias{DataFrame}
\alias{as.DataFrame}
\alias{as.DataFrame.default}
\alias{as.DataFrame.data.frame}
\alias{[.DataFrame}
\title{DataFrame and methods}
\usage{
DataFrame(...)

as.DataFrame(x, ...)

\method{as.DataFrame}{default}(x, ...)

\method{as.DataFrame}{data.frame}(x, ...)

\method{[}{DataFrame}(x, i, j, ..., by, sby, drop)
}
\arguments{
\item{...}{arbitrary number of args
\cr in \code{[} (TwoSidedFormulas)
\cr in constructor see \link[tibble]{data_frame}}

\item{x}{(DataFrame | data.frame)}

\item{i}{(logical | numeric | integer | OneSidedFormula | TwoSidedFormula |
FormulaList) see the examples.}

\item{j}{(logical | character | TwoSidedFormula | FormulaList | function)
character beginning with '^' are interpreted as regular expression}

\item{by, sby}{(character) variable names used in \link{group_by}. Using `sby`
triggers a summarise.}

\item{drop}{(ignored) never drops the class.}
}
\description{
This is a 'data.table' like implementation of a data.frame. dplyr is used as
backend. The only purpose is to have \code{R CMD check} friendly syntax.
}
\details{
\code{OneSidedFormula} is always used for subsetting rows.

\code{TwoSidedFormula} is used instead of name-value expressions in
\code{summarise} and \code{mutate}.
}
\examples{
data("airquality")
dat <- as.DataFrame(airquality)
dat[~ Month > 4, ][meanWind ~ mean(Wind), sby = "Month"]["meanWind"]
dat[FL(.n ~ mean(.n), .n = c("Wind", "Temp")), sby = "Month"]

}
\seealso{
\link{mutar}, \link{FL}
}
