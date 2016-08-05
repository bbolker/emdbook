\name{contour3d}
\alias{contour3d}
\title{
  Superimpose contour lines on a 3D plot
}
\description{
  Plot contour lines computed from data  in 3D,
  or add them to an existing 3D (RGL) surface
}
\usage{
contour3d(x, y, z, contourArgs=NULL, ...)
}
\arguments{
  \item{x}{numeric vector of x values (as in \code{\link{contour}}),
    or a list with components \code{x}, \code{y} and \code{z}}
  \item{y}{numeric vector of y values (as in \code{\link{contour}})}
  \item{z}{numeric z matrix (as in \code{\link{contour}})}
  \item{contourArgs}{list of arguments to \code{\link{contourLines}}}
  \item{\dots}{other arguments to \code{\link[rgl]{lines3d}}}
}
\value{
  Returns a list of contour lines (as in \code{\link{contourLines}}),
  invisibly.
}
\note{You have to install the \code{rgl} package before you
  can use this function.}
\author{
  Ben Bolker
}
\note{
  If you are superimposing the contour lines on a surface,
  it helps to draw the surface with some level of transparency
  (\code{alpha} parameter: see \code{\link[rgl]{material3d}}) so
  the contour lines are not obscured by the surface.
}
\keyword{misc}
