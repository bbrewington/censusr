% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call_census_api.R
\name{call_census_api}
\alias{call_census_api}
\title{Retrieve data from the Census API}
\usage{
call_census_api(variables_to_get, names = NULL, geoids, allgeos = NULL,
  data_source = c("sf1", "acs"), year = 2013, period = 5,
  api_key = NULL)
}
\arguments{
\item{variables_to_get}{A character vector of the desired variable names for
the Census API call, defined at \url{http://api.census.gov/}}

\item{names}{A character vector of the same length as \code{variables_to_get}
giving the user-defined names for the variables (optional). Defaults to raw
API names.}

\item{geoids}{A character vector of FIPS codes; must be at least to the
county (5-digit) level, and can accept down to blocks (15-digit).}

\item{allgeos}{(optional) A string identifying the type of geography for
which to collect data within the the requested \code{geoids}. Must be one
of \code{c('co', 'tr', 'bg', 'bl')}. For instance, if \code{allgeos =
"bg"}, will return all block groups within the given \code{geoids}.}

\item{data_source}{A string identifying whether the SF1 (decennial census) or
ACS data is desired.}

\item{year}{If \code{data_source = "acs"}, the final year of the summary
period. Default is \code{2013}.}

\item{period}{If \code{data_source = "acs"}, the length of aggregation period.
Default is \code{5}, or a 5-year aggregation table.}

\item{api_key}{The user's Census API key (as a character string). You can get
a free key from [Census](http://api.census.gov/data/key_signup.html). See
\code{vignette('censusr', package = 'censusr')} to setup a default key as
an environment variable.}
}
\value{
a data_frame with each requested variable at each requested geography.
}
\description{
Returns Census data for the 2010 SF1 or ACS 2013-2015 1-, 3-, and 5-Yr
aggregations for requested variables and geographies.
}
\details{
See \code{vignette('censusr', package = 'censusr')} for examples.
}

