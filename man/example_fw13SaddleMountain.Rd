% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{example_fw13SaddleMountain}
\alias{example_fw13SaddleMountain}
\title{Example FW13 timeseries data}
\format{
A \emph{raws_timeseries object} containing \code{meta} and \code{data} dataframes. 
\code{meta} has 1 row and 11 columns and \code{data} has 8744 rows and 13 columns.
}
\usage{
example_fw13SaddleMountain
}
\description{
The \code{example_fw13SaddleMountain} dataset provides a quickly loadable
\emph{raws_timeseries} object containing FW13 data for the station in Saddle Mountain,
Washington, (nwsID: 452701) in 2017.

This dataset was generated on 2020-09-06 by running:

\preformatted{
library(RAWSmet)

fw13Meta <- fw13_createMeta()
example_fw13SaddleMountain <- 
  fw13_createTimeseriesObject(nwsID = "452701", meta = fw13Meta) %>%
  raws_filterDate(20170101, 20180101, timezone = "America/Los_Angeles")
  
save(example_fw13SaddleMountain, file = "data/example_fw13SaddleMountain.rda")
}
}
\keyword{datasets}
