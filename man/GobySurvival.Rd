\name{GobySurvival}
\alias{GobySurvival}
\docType{data}
\title{Goby (reef fish) survivorship data}
\description{
  Survivorship data from experimental
  manipulations on gobies \emph{Elacatinus evelynae} and
  \emph{E. prochilos} in the US Virgin Islands, 2000-2002
}
\format{
  \describe{
    \item{\code{exper}}{experiment}
    \item{\code{year}}{year}
    \item{\code{site}}{site (factor: backreef, patchreef)}
    \item{\code{head}}{coral head (factor)}
    \item{\code{density}}{treatment "density" (number of "target" fish)}
    \item{\code{qual}}{treatment "quality"; background settlement rate}
    \item{\code{d1}}{last day observed (starting at 1)}
    \item{\code{d2}}{first day not observed}
  }
}
\source{
  J. Wilson, pers. comm.; "Habitat quality, competition and recruitment
  processes in two marine gobies", Ph.D. thesis, University of Florida
  (2004);
  \url{https://ufdc.ufl.edu/UFE0004180/00001/pdf}
}
\details{
  These data have been made available by the author for pedagogical use;
  out of courtesy,
  please don't redistribute (outside of the context of this
  package) or use in an academic publication without requesting
  permission (via the package maintainer).
}
\examples{
## midpoint of survival times
gg <- transform(GobySurvival,mid=(d1+d2)/2)
plot(table(gg$mid))
}
\keyword{datasets}
