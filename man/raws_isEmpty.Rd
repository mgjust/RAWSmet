% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/raws_utils.R
\name{raws_isEmpty}
\alias{raws_isEmpty}
\title{Test for an empty \emph{raws_timeseries} object}
\usage{
raws_isEmpty(rawsObject = NULL)
}
\arguments{
\item{rawsObject}{\emph{raws_timeseries} object}
}
\value{
\code{TRUE} if no data exists in the \code{raws_timeseries} object.
\code{FALSE} otherwise
}
\description{
Conveniently tests if a given \emph{raws_timeseries} object
is empty.
}
\examples{
\donttest{
library(RAWSmet)

raws_isEmpty(example_fw13SaddleMountain)
raws_isEmpty(example_wrccSaddleMountain)
}

}
