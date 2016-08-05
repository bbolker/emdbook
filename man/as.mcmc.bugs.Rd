\name{as.mcmc.bugs}
\alias{as.mcmc.bugs}
\title{Convert WinBUGS output to CODA format}
\description{
  Converts results of a \code{bugs} run
  (class \code{"bugs"}) to a form that can be
  used by CODA (class \code{"mcmc"})
}
\usage{
as.mcmc.bugs(x)
}
\arguments{
  \item{x}{an object of class \code{bugs} (output from \code{bugs()})}
}
\value{
  an object of class \code{mcmc}
}
\author{Ben Bolker}
\keyword{misc}
