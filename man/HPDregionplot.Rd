\name{HPDregionplot}
\alias{HPDregionplot}
\title{Plot highest posterior density region}
\description{
  Given a sample from a posterior distribution (an \code{mcmc} object
  from the \code{coda} package),
  plot the bivariate region of highest marginal posterior density
  for two variables, using \code{kde2d} from \code{MASS} to calculate
  a bivariate density.
}
\usage{
HPDregionplot(x, vars = 1:2, h, n = 50, lump = TRUE, prob = 0.95, xlab =
NULL, ylab = NULL, lims=NULL, ...)
}
\arguments{
  \item{x}{an \code{mcmc} or \code{mcmc.list} object}
  \item{vars}{which variables to plot: numeric or character vector}
  \item{h}{bandwidth of 2D kernel smoother (previous default value was \code{c(1,1)},
    which worked poorly with some plots with very small scales;
  if not specified, defaults to values in \code{\link[MASS]{kde2d}})}
  \item{n}{number of points at which to evaluate the density grid}
  \item{lump}{if \code{x} is an \code{mcmc.list} object, lump the
    chains together for plotting?}
  \item{prob}{probability level}
  \item{xlab}{x axis label}
  \item{ylab}{y axis label}
  \item{lims}{limits, specified as (x.lower,x.upper,y.lower,y.upper)
    (passed to \code{kde2d})}
  \item{\dots}{other arguments to \code{\link{contour}}}
}
\details{
  Uses \code{kde2d} to calculate a bivariate density, then
  normalizes the plot and calculates the contour corresponding
  to a contained volume of \code{prob} of the total volume under
  the surface (a two-dimensional Bayesian credible region).
}
\value{
  Draws a plot on the current device, and
  invisibly returns a list of contour lines (\code{\link{contourLines}}).
}
\author{Ben Bolker}
\note{Accuracy may be limited by density estimation; you may
  need to tinker with \code{h} and \code{n} (see \code{kde2d}
  in the \code{MASS} package).
  }
  \seealso{\code{HPDinterval} in the \code{coda} package,
  \code{ellipse} package}
\examples{
library(MASS)
library(coda)
z <- mvrnorm(1000,mu=c(0,0),Sigma=matrix(c(2,1,1,2),nrow=2))
z2 <- mvrnorm(1000,mu=c(0,0),Sigma=matrix(c(2,1,1,2),nrow=2))
HPDregionplot(mcmc(z))
HPDregionplot(mcmc.list(mcmc(z),mcmc(z2)))
}
\keyword{hplot}
