\name{gridsearch2d}
\alias{gridsearch2d}
\title{Graphical grid search in 2D}
\description{
  Given an objective function and starting ranges, computes the
  values over the ranges and displays them in the graphics window.
  User can then interactively zoom in to view interesting
  parts of the surface.
}
\usage{
gridsearch2d(fun, v1min, v2min, v1max, v2max,
n1 = 20, n2 = 20, logz = FALSE,
sys3d = c("both", "contour", "image"), ...)
}
\arguments{
  \item{fun}{Objective function to be minimized: function of two arguments}
  \item{v1min}{Minimum starting value of variable 1}
  \item{v2min}{Minimum starting  value of variable 2}
  \item{v1max}{Maximum starting  value of variable 1}
  \item{v2max}{Maximum starting  value of variable 2}
  \item{n1}{Number of grid points for variable 1}
  \item{n2}{Number of grid points for variable 2}
  \item{logz}{Display image or contour on log scale?}
  \item{sys3d}{Display surface as an image, contour, or both?}
  \item{\dots}{Other arguments to \code{fun}}
}
\details{
  If \code{log=TRUE}, the value of the surface is rescaled to
  \code{log10(m-min(m)+mindm)}, where \code{mindm} is the
  difference between the minimum and the next-largest value
  (or 1e-10 if this difference is zero).

  At each iteration, the user is prompted to select two
  corners of the new range with the mouse; if this choice
  is confirmed then the view zooms in.  When the user chooses
  to quit, they are asked whether they want to choose a final
  point (e.g. an estimate of the minimum) with the mouse.
}
\value{
  If a final point is chosen, a list with elements \code{x} and
  \code{y},
  otherwise NULL.
}
\author{Ben Bolker}
\seealso{\code{\link{curve3d}}}
\keyword{iplot}
