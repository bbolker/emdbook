\name{SeedPred}
\alias{SeedPred}
\alias{SeedPred_wide}
\alias{SeedPred_mass}
\docType{data}
\title{Seed predation data set from Duncan and Duncan 2000}
\description{
   Data on seed predation over time from Duncan and Duncan (2000)
}
\usage{
data(SeedPred)
data(SeedPred_wide)
data(SeedPred_mass)
}
\format{
  \describe{
    \item{\code{station}}{a factor specifying the station number}
    \item{\code{species}}{a factor with levels \code{abz} \code{cd} \code{cor} \code{dio} \code{mmu} \code{pol} \code{psd} \code{uva}}
    \item{\code{date}}{sample date}
    \item{\code{seeds}}{number of seeds present}
    \item{\code{tcum}}{cumulative time elapsed}
    \item{\code{tint}}{time since last sample}
    \item{\code{taken}}{seeds removed since last sample}
    \item{\code{dist}}{distance from forest edge (m)}
  }
}
\details{
  \code{SeedPred} is in long format, \code{SeedPred_wide} is in wide
  format; \code{SeedPred_wide} has lots of \code{NA} values because
  stations at 10 and 25 m from the forest were sampled on different
  days. \code{SeedPred_mass} is a numeric vector containing the
  approximate seed masses for each species.
  }
\source{
   R. Scot Duncan and Virginia E. Duncan (2000) Forest Succession and Distance from Forest Edge in an Afro-Tropical Grassland, Biotropica 32(1):33-41. (Data from Scot Duncan.)
}
\examples{
data(SeedPred)
}
\keyword{datasets}
