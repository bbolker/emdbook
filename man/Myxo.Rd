\name{Myxo}
\alias{Myxo}
\alias{MyxoTiter_sum}
\docType{data}
\title{Myxomatosis titer data}
\description{
   Myxomatosis viral titer in blood samples from European rabbits,
   as a function of day-of-infection and virus grade,
   from Dwyer et al. 1990, ultimately from Fenner et al. 1956
}
\usage{data(MyxoTiter_sum)}
\format{
  \describe{
    \item{\code{grade}}{virus grade (1, least virulent; 5, most virulent)}
    \item{\code{day}}{day of infection}
    \item{\code{titer}}{blood virus titer (in log10 rabbit infectious doses)}
  }
}
\source{
  Dwyer, Levin and Buttel, "A Simulation Model of the Population
  Dynamics and Evolution of Myxomatosis", Ecological Monographs
  60(4):423-447 (1990).
  Original source: Fenner et al. 1956
}
\note{Pulled graphically from figure in Dwyer et al.;
  to be replaced (eventually) with original tabular data in Fenner et al.
}
\examples{
data(MyxoTiter_sum)
library(lattice)
xyplot(titer~day|factor(grade),data=MyxoTiter_sum,xlim=c(0,30))
}
\keyword{datasets}
