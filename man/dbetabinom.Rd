\name{dbetabinom}
\alias{BetaBinomial}
\alias{dbetabinom}
\alias{rbetabinom}
\title{Beta-binomial distribution}
\description{
   Density function and random variate generator 
for the beta-binomial function, parameterized in
terms of probability and overdispersion
}
\usage{
dbetabinom(x, prob, size,  theta, shape1, shape2, log = FALSE)
rbetabinom(n, prob, size, theta, shape1, shape2)
}
\arguments{
  \item{x}{a numeric vector of integer values}
  \item{prob}{numeric vector: mean probability of underlying beta distribution}
  \item{size}{integer: number of samples}
  \item{theta}{overdispersion parameter}
  \item{shape1}{shape parameter of per-trial probability distribution}
  \item{shape2}{shape parameter of per-trial probability distribution}
  \item{log}{(logical) return log probability density?} 
  \item{n}{integer number of random variates to return}
}
\details{
   The beta-binomial distribution is the result of
compounding a beta distribution of probabilities with
a binomial sampling process.  The density function is
\deqn{p(x) = \frac{C(N,x) \mbox{Beta}(x+\theta p,N-x+\theta(1-p))}%
{\mbox{Beta}(\theta p,\theta(1-p))}%
}{p(x) = (C(N,x)*Beta(x+theta*p,N-x+theta*(1-p)))/Beta(theta*p,theta*(1-p))}
The parameters \code{shape1} and \code{shape2} are
the more traditional parameterization in terms of
the parameters of the per-trial probability distribution.
}
\value{
  A vector of probability densities or random deviates.
  If \code{x} is non-integer, the result is zero (and
  a warning is given).
}
\references{Morris (1997), American Naturalist 150:299-327;
\url{https://en.wikipedia.org/wiki/Beta-binomial_distribution}}
\note{Although the quantile (qbetabinom)
  and cumulative distribution (pbetabinom)
  functions are not available, in a pinch they
  could be computed from the \code{pghyper} and
  \code{qghyper} functions in the \code{SuppDists}
  package -- provided that \code{shape2>1}.  As
  described in \code{?pghyper}, \code{pghyper(q,a=-shape1,
    N=-shape1-shape2,k=size)} should give the
  cumulative distribution for the beta-binomial
  distribution with parameters (shape1,shape2,size),
  and similarly for \code{qghyper}.
  (Translation to the (theta,size,prob) parameterization
  is left as an exercise.)}
\author{Ben Bolker}
\seealso{\code{\link{dbeta}}, \code{\link{dbinom}}}
\examples{
  set.seed(100)
  n <- 9
  z <- rbetabinom(1000, 0.5, size=n, theta=4)
  par(las=1,bty="l")
  plot(table(z)/length(z),ylim=c(0,0.34),col="gray",lwd=4,
       ylab="probability")
  points(0:n,dbinom(0:n,size=n,prob=0.5),col=2,pch=16,type="b")
  points(0:n,dbetabinom(0:n,size=n,theta=4,
           prob=0.5),col=4,pch=17,type="b")
  ## correspondence with SuppDists 
  if (require(SuppDists)) {
    d1a <- dghyper(0:5,a=-5,N=-10,k=5)
    d1b <- dbetabinom(0:5,shape1=5,shape2=5,size=5)
    max(abs(d1a-d1b))
    p1a <- pghyper(0:5,a=-5,N=-10,k=5,lower.tail=TRUE)
    p1b <- cumsum(d1b)
    max(abs(p1a-p1b))
  } 
}
\keyword{distribution}
