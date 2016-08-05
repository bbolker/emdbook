\name{Lily}
\alias{Lily}
\alias{Lily_sum}
\docType{data}
\title{Glacier lily occurrence and fecundity data}
\description{
	Data on sample quadrats of the glacier lily,
	\emph{Erythronium grandiflorum}, from Thomson et al 1996
}
\usage{data(Lily_sum)}
\format{
  \describe{
    \item{\code{x}}{location of quadrat}
    \item{\code{y}}{location of quadrat}
    \item{\code{flowers}}{number of flowers}
    \item{\code{seedlings}}{number of seedlings}
    \item{\code{vegetative}}{number of vegetative plants}
    \item{\code{gopher}}{index of gopher activity}
    \item{\code{rockiness}}{rockiness index}
    \item{\code{moisture}}{moisture index}
    \item{\code{flowcol}}{inverse quintile of flowering plants}
    \item{\code{seedcol}}{inverse quintile of seedlings}
    \item{\code{vegcol}}{inverse quintile of number of vegetative plants for image plots}
    \item{\code{gophcol}}{inverse quintile of gopher activity}
    \item{\code{rockcol}}{inverse quintile of rockiness}
    \item{\code{moiscol}}{inverse quintile of moisture}
  }
}
\details{
  16x16 grid of 2x2m quadrats in Washington Gulch, sampled 1992
}
\source{
  Thomson et al 1996, "Untangling multiple factors in spatial distributions",
  Ecology 77:1698-1715.  Data from James D. Thomson, with file format
  conversion help from Jennifer Schmidt
}
\examples{
data(Lily_sum)
par(mfrow=c(3,2))
for (i in 9:14) {
  image(matrix(Lily_sum[,i],nrow=16),main=names(Lily_sum)[i])
}
}
\keyword{datasets}
