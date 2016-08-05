\name{Reedfrog}
\alias{Reedfrog}
\alias{ReedfrogPred}
\alias{ReedfrogFuncresp}
\alias{ReedfrogSizepred}
\docType{data}
\title{Data on reed frog predation experiments}
\description{
  Data on lab experiments on the density- and size-dependent
  predation rate of an African reed frog, \emph{Hyperolius
    spinigularis},
  from Vonesh and Bolker 2005 
}
\usage{data(ReedfrogPred)
data(ReedfrogSizepred)
data(ReedfrogFuncresp)}
\format{
  Various data with variables:
  \describe{
    \item{\code{density}}{initial tadpole density (number of tadpoles
      in a 1.2 x 0.8 x 0.4 m tank) [experiment 1]}
    \item{\code{pred}}{factor: predators present or absent [experiment 1]}
    \item{\code{size}}{factor: big or small tadpoles [experiment 1]}
    \item{\code{surv}}{number surviving}
    \item{\code{propsurv}}{proportion surviving (=surv/density) [experiment 1]}
    \item{\code{TBL}}{tadpole body length in mm [size-predation
	experiment]}
    \item{\code{Kill}}{number killed out of 10, in 3 days
	[size-predation]}
    \item{\code{Initial}}{initial number/density (300 L tank)
	[functional response]}
    \item{\code{Killed}}{number killed by 3 dragonfly larvae in 14
	days [functional response]}
  }
}
\source{
  Vonesh and Bolker (2005) Compensatory larval responses shift
  trade-offs associated with predator-induced hatching plasticity.
  Ecology 86:1580-1591
}
\examples{
data(ReedfrogPred)
boxplot(propsurv~size*density*pred,data=ReedfrogPred)
data(ReedfrogSizepred)
data(ReedfrogFuncresp)
}
\keyword{datasets}
