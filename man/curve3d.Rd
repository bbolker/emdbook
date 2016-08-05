\name{curve3d}
\alias{curve3d}
\title{Plot a 3D surface representing a 2D curve}
\description{
  Two-dimensional analogue of \code{curve}: generates a surface
  and plots it
}
\usage{
curve3d(expr, from = c(0, 0), to = c(1, 1), n = c(41, 41),
xlim, ylim, add = FALSE,
xlab=varnames[1],
ylab=varnames[2],
zlab = NULL, log = NULL, sys3d = c("persp", "wireframe", "rgl",
"contour", "image", "none"),
varnames=c("x","y"),use_plyr=TRUE,.progress="none",...)
}
\arguments{
  \item{expr}{a mathematical expression using \code{x} and \code{y} as
    the independent variables}
  \item{from}{minimum values for \code{x} and \code{y}}
  \item{to}{maximum values for \code{x} and \code{y}}
  \item{xlim}{range of values for \code{x}}
  \item{ylim}{range of values for \code{y}}
  \item{n}{number of grid points in each direction}
  \item{add}{(logical) add to an existing plot?  (only possible for
    contour plots or rgl)}
  \item{xlab}{x label}
  \item{ylab}{y label}
  \item{zlab}{z label}
  \item{log}{(character): \code{"x"}, \code{"y"}, or \code{"xy"} for
    logarithmic axes}
  \item{sys3d}{3D plotting system to use: one of
    \code{"persp"}, \code{"wireframe"},
    \code{"rgl"}, \code{"contour"}, \code{"image"},
    or \code{"none"}}
  \item{varnames}{names of variables to substitute}
  \item{use_plyr}{use methods from the \code{plyr} package?}
  \item{.progress}{progress bar type (\code{"none"}, \code{"text"},
    \code{"tk"},\code{"win"}: see \code{\link{create_progress_bar}})}
    \item{\dots}{additional arguments to the plotting functions}
}
\value{
  invisibly, a list of
  \item{x}{x values}
  \item{y}{y values}
  \item{z}{z matrix}
}
\note{
  You must explicitly install the \code{rgl} package
  (via \code{install.packages("rgl")}) before using \code{sys3d="persp"}.
}
\author{Ben Bolker}
\seealso{\code{\link{outer}}, \code{\link{curve}}}
\examples{
curve3d(cos(2*pi*x)+sin(2*pi*y/3),
 from=c(0,0),to=c(1,1))
x <- 1
y <- 3
curve3d(cos(2*pi*x)+sin(2*pi*y/3),
 from=c(0,0),to=c(1,1),sys3d="wireframe")
curve3d(x*cos(2*pi*a/x)+sin(2*pi*b/y),
 from=c(0,0),to=c(1,1),sys3d="wireframe",
varnames=c("a","b"))  ## identical
par(mfrow=c(2,2))
curve3d(cos(2*pi*x)+sin(2*pi*y/3),
 from=c(0,0),to=c(1,1),sys3d="image")
curve3d(x*cos(2*pi*a/x)+sin(2*pi*b/y),
 from=c(0,0),to=c(1,1),sys3d="image",
varnames=c("a","b"))  ## identical
x <- 4
curve3d(cos(2*pi*a/x)+y*sin(2*pi*b/y),
 from=c(0,0),to=c(1,1),sys3d="image",
varnames=c("a","b"))
curve3d(cos(2*pi*x)+sin(2*pi*y/3),
 from=c(0,0),to=c(1,1),sys3d="image")
curve3d(cos(2*pi*x)+sin(2*pi*y/3),
 sys3d="contour",add=TRUE)
}
\keyword{hplot}
