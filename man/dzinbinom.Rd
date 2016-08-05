\name{dzinbinom}
\alias{dzinbinom}
\alias{rzinbinom}
\title{Zero-inflated negative binomial distribution}
\description{
  Probability distribution function and random variate generation for the
  zero-inflated negative binomial distribution
}
\usage{
dzinbinom(x, mu, size, zprob, log=FALSE)
rzinbinom(n, mu, size, zprob)
}
\arguments{
  \item{x}{vector of integer values}
  \item{n}{number of values to draw}
  \item{mu}{mean parameter (or vector of parameters) of negative binomial}
  \item{size}{number of trials/overdispersion parameter (or vector of
parameters) of negative binomial}
  \item{zprob}{probability of structural zeros}
  \item{log}{return log probability?}
}
\details{
The zero-inflated negative binomial distribution is
widely used to model extra zero counts in count data
that otherwise follows a negative binomial distribution.
The probability distribution is
 \deqn{
    p(0) =p_z + (1-p_z) NB(0,mu,k)}{% 
    p(0) = pz + (1-pz) NB(0,mu,k)}
and
\deqn{
    p(x) =(1-p_z) NB(x,mu,k)}{% 
    p(x) = (1-pz) NB(x,mu,k)}
for \eqn{x>0}.
}
\value{
  Probabilities of x or random deviates.
}
\note{Only the "ecological" parameterization is included here
(must specify \code{mu}, not \code{prob})}
\references{Tyre et al., "Improving precision and reducing bias in biological
surveys: estimating false-negative error rates", Ecological Applications
13:1790-1801 (2003)}
\author{Ben Bolker}
\seealso{\code{\link{dnbinom}}, Simon Jackman's pscl package}
\examples{
dzinbinom(0:9,mu=2,zprob=0.3,size=0.9)
dnbinom(0:9,mu=2,size=0.9)
rzinbinom(10,mu=2,zprob=0.3,size=0.9)
}
\keyword{misc}
