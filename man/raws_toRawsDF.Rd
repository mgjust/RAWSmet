% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/raws_toRawsDF.R
\name{raws_toRawsDF}
\alias{raws_toRawsDF}
\title{Convert a raws_timeseries object to a rawsDF object}
\usage{
raws_toRawsDF(rawsObject = NULL, verbose = TRUE)
}
\arguments{
\item{rawsObject}{\emph{raws_timeseries} object to convert.}

\item{verbose}{Logical flag controlling detailed progress statements.}
}
\value{
rawsDF object
}
\description{
Converts a \emph{raws_timeseries} object to a single dataframe
containing the following values:

\enumerate{
 \item{nwsID - the nwsID of the station}
 \item{wrccID - the wrccID of the station}
 \item{siteName - the name of the station}
 \item{longitude - longitude coordinate of the station}
 \item{latitude - latitude coordinate of the station}
 \item{datetime - the datestamp of the observation}
 \item{parameter - the name of the parameter this record represents}
 \item{value - the value of the parameter this record represents}
}
}
\examples{
\dontrun{
library(RAWSmet)

setRawsDataDir("~/Data/RAWS/")

stationMeta <- wrcc_loadMeta(stateCode = "WA")
rawsObject <- wrcc_loadYear(
  wrccID = "waWENU", 
  meta = stationMeta, 
  year = 2020,
  password = MY_PASSWORD
)

rawsDF <- raws_toRawsDF(rawsObject)

dplyr::glimpse(rawsDF)
}

}
\references{
\href{https://cefa.dri.edu/raws/}{Program for Climate, Ecosystem and Fire Applications}
}
\seealso{
\code{wrcc_loadYear}

\code{fw13_load}
}