\name{dmvnorm}
\alias{dmvnorm}
\title{Multivariate normal distribution density function}
\description{
  Calculates the probability density function of the multivariate normal distribution
}
\usage{
dmvnorm(x, mu, Sigma, log = FALSE, tol = 1e-06)
}
\arguments{
  \item{x}{a vector or matrix of multivariate observations}
  \item{mu}{a vector or matrix of mean values}
  \item{Sigma}{a square variance-covariance matrix}
  \item{log}{(logical) return log-likelihood?}
  \item{tol}{tolerance for positive definiteness}
}
\details{
  uses naive linear algebra -- could probably use QR decomposition
  and/or crossprod.
}
\value{
  vector of log-likelihoods
}
\author{Ben Bolker}
\seealso{\code{\link[MASS]{mvrnorm}} (in \code{MASS} package),
  \code{\link[mvtnorm]{dmvnorm}} (in \code{mvtnorm} package)}
\examples{
M = matrix(c(1,0.5,0.5,0.5,1,0.5,0.5,0.5,1),nrow=3)
dmvnorm(1:3,mu=1:3,Sigma=M,log=TRUE)
dmvnorm(matrix(1:6,nrow=2),mu=1:3,Sigma=M,log=TRUE)
dmvnorm(matrix(1:6,nrow=2),mu=matrix(1:6,nrow=2),Sigma=M,log=TRUE)
}
\keyword{misc}
