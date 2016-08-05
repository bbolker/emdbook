\name{metropSB}
\alias{metropSB}
\title{Metropolis-Szymura-Barton algorithm}
\description{
  Stochastic global optimization using the Metropolis-Szymura-Barton
  algorithm. New parameters are chosen from a uniform candidate
  distribution with an adaptively tuned scale, and accepted or rejected
  according to a Metropolis rule.
}
\usage{
metropSB(fn, start, deltap = NULL, scale = 1, rptfreq = -1, acceptscale
= 1.01, rejectscale = 0.99, nmax = 10000,
retvals = FALSE, retfreq = 100, verbose = FALSE, ...)
}
\arguments{
  \item{fn}{Objective function, taking a vector of parameters as its
    first argument.  The function is minimized, so it should be a
    negative log-likelihood or a negative log-posterior density.}
  \item{start}{Vector of starting values}
  \item{deltap}{Starting jump size; half-width of uniform distribution}
  \item{scale}{Scaling factor for acceptance}
  \item{rptfreq}{Frequency for reporting interim results (<0 means no reporting)}
  \item{acceptscale}{Amount to inflate candidate distribution if last
    jump was accepted}
  \item{rejectscale}{Amount to shrink candidate distribution if last
    jump was rejected}
  \item{nmax}{Number of iterations}
  \item{retvals}{Return detailed statistics?}
  \item{retfreq}{Sampling frequency for detailed statistics}
  \item{verbose}{Print status?}
  \item{\dots}{Other arguments to \code{fn}}
}
\details{
  Metropolis-Szymura-Barton algorithm: given function and starting value, try to find
  parameters that minimize the function
 Algorithm: at a given step,
 1. pick a new set of parameters, each of which is uniformly distributed
    in (p[i]-deltap[i],p[i]+deltap[i])
 2. calculate function value at new parameter values
 3. if f(new)<f(old), accept
 4. if f(new)>f(old), accept with probability (exp(-scale*(f(new)-f(old)))
 5. if accept, increase all deltap values by acceptscale; if reject, decrease by rejectscale
 6. if better than min so far, save function and parameter values
 7. if reject, restore old values
}
\value{
  \item{minimum}{minimum value achieved}
  \item{estimate}{parameters corresponding to minimum}
  \item{funcalls}{number of function evaluations}
  If \code{retvals=TRUE}:
  \item{retvals}{matrix of periodic samples including parameters,
    jump scale, current value, and minimum achieved value}
}
\references{Szymura and Barton (1986) Genetic analysis of a hybrid zone
  between the fire-bellied toads,Bombina bombina and B. variegata, near
  Cracow in southern Poland. Evolution 40(6):1141-1159.
}
\note{  If \code{scale=1} the algorithm satisfies MCMC rules, provided
  that the other properties of the MC (irreducibility and aperiodicity)
  are satisfied.}
\author{Ben Bolker}
\seealso{\code{\link{optim}}, \code{MCMCmetrop1R} (\code{MCMCpack} package)}
\keyword{misc}
