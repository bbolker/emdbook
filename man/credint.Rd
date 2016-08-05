\name{credint}
\alias{tcredint}
\alias{ncredint}
\title{Calculate Bayesian credible intervals}
\description{
  Calculate Bayesian credible intervals based on various types
  of information about the posterior distribution
}
\usage{
tcredint(dist, parlist, ranges, level = 0.95, eps = 1e-05,verbose=FALSE)
ncredint(pvec,npost,level=0.95,tol=0.01,verbose=FALSE)
}
\arguments{
  \item{dist}{character string giving the name of a distribution for
    which "d", "q", and "p" function exist, e.g. "beta"}
  \item{parlist}{list of parameters to pass to distribution functions}
  \item{ranges}{lower, middle, and upper values to bracket lower
  and upper boundaries of the credible interval}
  \item{level}{confidence level}
  \item{eps}{if \code{ranges} is missing, set lower and
    upper brackets to the \code{eps} and \code{1-eps} quantiles
    of the distribution}
  \item{tol}{tolerance on credible interval}
  \item{verbose}{if TRUE,
    return detailed information on the probability cutoff and
    realized area of the credible interval; if FALSE, just lower
    and upper bounds of the credible region}
  \item{...}{additional arguments to \code{\link{density}}}
  \item{pvec}{numeric vector of parameter values}
  \item{npost}{numeric vector of posterior density values corresponding
    to \code{pvec}}
}
\details{
  \code{tcredint} gives credible intervals for a theoretical
  posterior density with defined density, cumulative density, and
  quantile functions; \code{ncredint} gives credible intervals
  for a numerical posterior density.
}
\value{
  A numeric vector giving the credible interval.
  If \code{verbose=FALSE}, gives just lower and upper bounds;
  if \code{verbose=TRUE}, also gives
  information on the probability cutoff and
    realized area of the credible interval
  }
  \note{For credible intervals from a sample (e.g. from
    an MCMC run), see \code{HPDinterval} in the \code{coda}
    package.}
\author{Ben Bolker}
\examples{
tcredint("beta",list(shape1=5,shape2=10),verbose=TRUE)
pvec = seq(0,1,length=100)
postvec = dbeta(pvec,shape1=5,shape2=10)
ncredint(pvec,postvec,verbose=TRUE)
set.seed(1001)
}
\keyword{misc}
