\name{perturb.params}
\alias{perturb.params}
\title{Create a list of perturbed parameters}
\description{
  Takes a baseline set of parameters and perturbs it to
  create a variety of starting points for maximum likelihood
  estimation or MCMC
}
\usage{
perturb.params(base, alt, which, mult = FALSE, use.base = TRUE)
}
\arguments{
  \item{base}{a named list (or vector) of parameters}
  \item{alt}{a list of lists (or vectors) of alternative parameter values
    or multipliers}
  \item{which}{which parameters to perturb (currently unused)}
  \item{mult}{(logical) multiply baseline values rather than
    replacing them?}
  \item{use.base}{(logical) include baseline parameters in the list?}
}
\details{
  Takes the baseline parameter list and substitutes alternative values.
}
\value{
  A list of named lists of parameters.
}
\author{Ben Bolker}
\note{To be extended.}
\examples{
perturb.params(list(x=1,y=2,z=3),alt=list(x=c(2,4),z=5))
}
\keyword{optimize}
