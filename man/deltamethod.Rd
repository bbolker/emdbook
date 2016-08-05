\name{deltamethod}
\alias{deltamethod}
\alias{deltavar}
\title{Delta method functions}
\description{
  Delta-method implementations for Jensen's inequality and prediction uncertainty
}
\usage{
deltamethod(fun, z, var = "x", params = NULL, max.order = 2)
deltavar(fun,meanval=NULL,vars,Sigma,verbose=FALSE)
}
\arguments{
  \item{fun}{Function of one (deltamethod) or more arguments, expressed
    in raw form (e.g. a*x/(b+x))}
  \item{z}{numeric vector of values}
  \item{var}{variable name}
  \item{vars}{list of variable names: needed if \code{params} does not
    have names, or if some of the values specified in \code{params}
    should be treated as constant}
  \item{params}{list or numeric vector of parameter values to substitute}
  \item{meanval}{possibly named vector of mean values of parameters}
  \item{Sigma}{numeric vector of variances or variance-covariance matrix}
  \item{max.order}{maximum order of delta method to compute}
  \item{verbose}{print details?}
}
\details{
  \code{deltamethod()} is for computing delta-method approximations of
  the mean of a function of data; \code{deltavar()} is for estimating
  variances of a function based on the mean values and
  variance-covariance matrix of the parameters.  If \code{Sigma} is a
  vector rather than a matrix, the parameters are assumed to be
  independently estimated.
}
\value{
  For \code{deltavar()}, a vector of predicted variances; for
  \code{deltamethod()} a vector containing the observed value of the
  function average, the function applied to the average, and a series of
  delta-method approximations
}
\references{Lyons (1991), "A practical guide to data analysis for
  physical science students", Cambridge University Press}
\author{Ben Bolker}
\examples{
deltamethod(a*x/(b+x),runif(50),params=list(a=1,b=1),max.order=9)
deltavar(scale*gamma(1+1/shape),meanval=c(scale=0.8,shape=12),
   Sigma=matrix(c(0.015,0.125,0.125,8.97),nrow=2))
## more complex deltavar example
xvec = seq(-4,4,length=101)
x1 = xvec
x2 = xvec
v = matrix(0.2,nrow=3,ncol=3)
diag(v) = 1
m = c(b0=1,b1=1.5,b2=1)
v3  = deltavar(1/(1+exp(-(b0+b1*x1+b2*x2))),meanval=m,Sigma=v)
plot(xvec,v3)
}
\keyword{misc}
