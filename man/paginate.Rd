% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paginate.R
\name{paginate}
\alias{paginate}
\title{Paginate results from API}
\usage{
paginate(url, head = FALSE, limit = 10000, verbose = FALSE)
}
\arguments{
\item{url}{API endpoint}

\item{head}{Return the data (\code{FALSE}) or the number of records (\code{TRUE})?}

\item{limit}{Number of items per query}

\item{verbose}{Whether to produce verbose output.}
}
\description{
Ideas for improvement:
}
\details{
- Paginated endpoints return a 'X-Total-Count' header record with the total number of records. This could be used
  to pre-allocate space and avoid the while() loop. First call to endpoint could have limit=0 to avoid retrieving
  any results.
- Move the JSON processing outside of the loop. Just accumulate all of the JSON into a single document. Evaluate
  whether this is an improvement!
- Use HEAD to find expected number of results.
- Could avoid final API query by checking if the number of results returned was less than limit.
}
