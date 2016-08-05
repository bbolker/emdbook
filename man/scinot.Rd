\name{scinot}
\alias{scinot}
\alias{axis.scinot}
\title{Scientific notation as LaTeX/expression()}
\description{
  Takes a number and returns a version formatted in LaTeX
  (suitable for use with \code{Sexpr()} in an Sweave document)
  or in \code{expression()} (suitable for plotting),
  or plots an axis with labels in scientific notation
}
\usage{
scinot(x, format = c("latex", "expression"), delim="$",
pref="", ...)
axis.scinot(side,at)
}
\arguments{
  \item{x}{a numeric vector (of length 1)}
  \item{format}{produce LaTeX or expression() format?}
  \item{delim}{delimiter to add at beginning and end (latex only)}
  \item{pref}{text to put before expression (expression only)}
  \item{side}{side on which to plot axis}
  \item{at}{list of locations/labels}
  \item{\dots}{additional arguments to \code{\link{formatC}}}
}
\value{
  a character vector (if \code{latex}) or expression (if
  \code{expression}); \code{axis.scinot} draws an axis on the
  current plot
  
}
\author{Ben Bolker}
\seealso{\code{\link{formatC}}, \code{\link{expression}},
  \code{\link{plotmath}}, \code{\link{axis}}, \code{\link{axTicks}},
  \code{latexSN} in the \code{Hmisc} package, \code{eaxis} in the \code{sfsmisc} package}
\examples{
scinot(1e-5)
scinot(1e-5,digits=0)
scinot(1e-5,"expression")
scinot(1e-5,"expression",pref="p=")
set.seed(1001)
plot(1:100,rlnorm(100,0,2),log="y",axes=FALSE)
axis(side=1)
axis.scinot(side=2)  ## fix bug!
}
\keyword{misc}
