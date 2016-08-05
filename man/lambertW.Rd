\name{lambertW}
\alias{lambertW}
\alias{lWasymp}
\alias{lambertW_base}
\title{Lambert W function}
\description{
  Computes the Lambert W function, giving efficient solutions to the equation x*exp(x)==z
}
\usage{
lambertW_base(z, b = 0, maxiter = 10, eps = .Machine$double.eps, min.imag =
1e-09)
lWasymp(z,logz)
lambertW(z,\dots)
}
\arguments{
  \item{z}{(complex) vector of values for which to compute the function}
  \item{logz}{(complex (?)) vector of \eqn{log(z)} values (to be
    specified by name instead of \code{z})}
  \item{b}{(integer) b=0 specifies the principal
    branch, 0 and -1 are the ones that can take non-complex values}
  \item{maxiter}{maximum numbers of iterations for convergence}
  \item{eps}{convergence tolerance}
  \item{min.imag}{maximum magnitude of imaginary part to chop when
    returning solutions}
  \item{\dots}{arguments to pass to \code{lambertW_base}}
}
\details{
Compute the Lambert W function of z.  This function satisfies
\eqn{W(z)\exp(W(z))=z}{W(z)*exp(W(z)) = z}, and can thus be used to express solutions
of transcendental equations involving exponentials or logarithms.
For \eqn{z>10^307}{z>1e307}, an asymptotic formula (from
Corless et al by way of
\url{http://mathworld.wolfram.com/LambertW-Function.html})
is used: \code{lambertW} is a wrapper that automatically selects
the asymptotic formula where appropriate.
\itemize{
  \item{In ecology, the Lambert W can be used to solve the so-called
    "Rogers equation" for predator functional response with depletion.}
  \item{In epidemiology, the Lambert W function solves the final-size
    equation of a simple SIR epidemic model.}
  }
}
\value{
  Complex or real vector of solutions.
}
\references{Corless, Gonnet, Hare, Jeffrey, and Knuth (1996), "On the Lambert
W Function", Advances in Computational Mathematics 5(4):329-359}
\author{Nici Schraudolph <schraudo@inf.ethz.ch> (original
  version (c) 1998), Ben Bolker (R translation)
}
\seealso{\code{?Lambert} in the \code{gsl} package by Robin Hankin,
  which uses Gnu Scientific Library code; also \code{?lambertW}
in the \code{VGAM} and \code{pracma} packages, and the \code{lambertW} package}
\note{
This implementation should return values within 2.5*eps of its
counterpart in Maple V, release 3 or later.  Please report any
discrepancies to the author or translator.

The derivative of the \code{lambertW} function is \code{plogis(-lambertW)}.
}
\examples{
curve(lambertW(x),from=0,to=10)
pvec <- seq(-1,1,length=40)
m <- outer(pvec,pvec,function(x,y)Re(lambertW(x+y*1i)))
persp(pvec,pvec,m,
      theta=290,shade=0.5,zlab="lambertW")
num1 <- uniroot(function(x) {x*exp(x)-1},lower=0,upper=1,tol=1e-9)
abs(lambertW(1)-num1$root)<1e-9
###
## Rogers random predator equation:
rogers.pred <- function(N0,a,h,T) {
   N0 - lambertW(a*h*N0*exp(-a*(T-h*N0)))/(a*h)
}
holling2.pred <- function(N0,a,h) {
  a*N0/(1+a*h*N0)
}
curve(rogers.pred(x,a=1,h=0.2,T=1),from=0,to=60,
  ylab="Number eaten/unit time",xlab="Initial number",ylim=c(0,5),
  main="Predation: a=1, h=0.2")
curve(rogers.pred(x,a=1,h=0.2,T=5)/5,add=TRUE,lty=2,from=0)
curve(rogers.pred(x,a=1,h=0.2,T=0.2)*5,add=TRUE,lty=3,from=0)
curve(rogers.pred(x,a=1,h=0.2,T=10)/10,add=TRUE,lty=4,from=0)
curve(holling2.pred(x,a=1,h=0.2),add=TRUE,lty=1,lwd=2,from=0)
abline(h=5)
legend(30,2,
   c(paste("Rogers, T=",c(0.2,1,5,10),sep=""),
    "Holling type II"),lwd=c(rep(1,4),2),lty=c(3,1,2,4,1))
## final size of an epidemic
finalsize <- function(R0) {
   1+1/R0*lambertW(-R0*exp(-R0))
}
curve(finalsize,from=1,to=10,xlab=expression(R[0]),ylab="Final size")
## comparison of asymptotic results
tmpf <- function(x) {
  L0 <- lambertW_base(10^x)
  L1 <- lWasymp(logz=x*log(10))
  (L1-L0)/L0
}
curve(tmpf,from=1,to=307,log="y")

## derivative
## don't run (avoid numDeriv dependency)
## require(numDeriv)
##   grad(lambertW(1))
##   plogis(-lambertW(1))
}
\keyword{math}
