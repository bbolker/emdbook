\name{calcslice}
\alias{calcslice}
\title{Negative log-likelihood slice}
\description{
  Calculate the negative log-likelihood along a line
  connecting two \code{mle} fits
}
\usage{
calcslice(fit1, fit2, fn = fit1@minuslogl, range = c(-0.1, 1.1), n = 400)
}
\arguments{
  \item{fit1}{An \code{mle} object}
  \item{fit2}{Another \code{mle} object}
  \item{fn}{Negative log-likelihood function}
  \item{range}{Numeric vector: range of parameters to try, where
    0 corresponds to \code{coef(fit1)} and 1 corresponds to \code{coef(fit2)}}
  \item{n}{Number of points to evaluate}
}
\details{
  Calculates the negative log-likelihood (not a profile, just a
  "slice") along the line connecting the two sets of coefficients.
  Intended for diagnosing and visualizing multiple minima in
  a likelihood surface, especially in higher-dimensional models.
}
\value{
  \item{x}{Parameter values, along the 0-1 scale described above}
  \item{y}{Negative log-likelihood values}
}
\author{Ben Bolker}
\keyword{misc}

