\name{dchibarsq}
\alias{dchibarsq}
\alias{pchibarsq}
\alias{qchibarsq}
\alias{rchibarsq}
\title{Mixed chi-squared distributions}
\description{
  Calculates "mixed" chi-squared distributions
  (mixtures of chi-square(n) and chi-square(n-1));
  useful for Likelihood Ratio Tests when
  parameters are on the boundary
}
\usage{
dchibarsq(x, df = 1, mix = 0.5, log = FALSE)
pchibarsq(p, df = 1, mix = 0.5, lower.tail=TRUE, log.p = FALSE)
qchibarsq(q, df = 1, mix = 0.5)
rchibarsq(n, df = 1, mix = 0.5)
}
\arguments{
  \item{x}{numeric vector of positive values}
  \item{p}{numeric vector of positive values}
  \item{q}{numeric vector of quantiles (0-1)}
  \item{n}{integer: number of random deviates to pick}
  \item{df}{degrees of freedom (positive integer)}
  \item{mix}{mixture parameter: fraction of distribution
    that is chi-square(n-1) distributed}
  \item{log}{return log densities?}
  \item{log.p}{return log probabilities?}
  \item{lower.tail}{return lower tail values?}
}
\value{
  Vectors of probability densities (\code{dchibarsq}),
  cumulative probabilities (\code{pchibarsq}),
  quantiles (\code{qchibarsq}), or
  random deviates (\code{rchibarsq}) from
  Goldman and Whelan's "chi-bar-squared" distribution.
  \code{qchibarsq} uses simple algebra for df=1
  and \code{\link{uniroot}} for df>1.
}
\references{N. Goldman and S. Whelan (2000) "Statistical Tests of
  Gamma-Distributed Rate Heterogeneity in Models of Sequence Evolution
  in Phylogenetics", Mol. Biol. Evol. 17:975-978.
  D. O. Stram and J. W. Lee (1994) "Variance Components Testing in the
  Longitudinal Fixed Effects Model", Biometrics 50:1171-1177.
  }
  
  \author{Ben Bolker}
\examples{
x <- rchibarsq(100)
plot(density(x,from=0))
curve(dchibarsq(x),add=TRUE,col=2,from=0)
\dontrun{
library(lattice)
print(qqmath(~ simdist,
       distribution=qchibarsq,
       panel = function(x, ...) {
         panel.qqmathline(x, ...)
         panel.qqmath(x, ...)
            }))

}
## create first line of table in Goldman and Whelan 2000
round(qchibarsq(c(0.01,0.05,0.9,0.95,0.975,0.99,0.995),df=1),2)
## check second line of table
round(pchibarsq(c(3.81,5.14,6.48,8.27,9.63),df=2),3)
## create middle column
round(qchibarsq(0.95,df=1:10))
}
\keyword{misc}
