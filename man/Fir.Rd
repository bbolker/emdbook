\name{Fir}
\alias{Fir}
\alias{FirDBHFec}
\alias{FirDBHFec_sum}
\docType{data}
\title{Data on fir (Abies) life history}
\description{
  Data on various aspects of life history (diameter at
  breast height, onset of reproduction, crowding, fecundity)
  from subalpine \emph{Abies balsamea},
  from Dodd and Silvertown
}
\usage{data(FirDBHFec)
data(FirDBHFec_sum)
}
\format{
  \describe{
    \item{\code{DBH}}{diameter in m at breast height (1.4 m)}
    \item{\code{fecundity}}{number of cone rachises [per year?]}
    \item{\code{pop}}{which population (wave, nonwave) an
      individual was sampled from}
        \item{\code{VAR1}}{location}
    \item{\code{WAVE_NON}}{non-wave (n) or wave (w)}
    \item{\code{TREE_NO}}{tree number}
    \item{\code{C1991}}{1991 cones}
    \item{\code{C1992}}{1992 cones}
    \item{\code{C1993}}{1993 cones}
    \item{\code{C1994}}{1994 cones}
    \item{\code{C1995}}{1995 cones}
    \item{\code{C1996}}{1996 cones}
    \item{\code{C1997}}{1997 cones}
    \item{\code{C1998}}{1998 cones}
    \item{\code{C1999}}{1999 cones}  
    \item{\code{NOTES_IN}}{notes}
    \item{\code{G1990}}{1990 growth}
    \item{\code{G1991}}{1991 growth}
    \item{\code{G1992}}{1992 growth}
    \item{\code{G1993}}{1993 growth}
    \item{\code{G1994}}{1994 growth}
    \item{\code{G1995}}{1995 growth}
    \item{\code{G1996}}{1996 growth}
    \item{\code{G1997}}{1997 growth}
    \item{\code{G1998}}{1998 growth}
    \item{\code{DBH}}{diameter at breast height}
    \item{\code{DBH_MM}}{dbh in mm}
    \item{\code{DBH_2}}{?}
    \item{\code{DBH_2MM}}{?}
    \item{\code{AGE}}{?}
    \item{\code{GOOD_OR}}{?}
    \item{\code{PC1998}}{?}
    \item{\code{AC1998}}{?}
    \item{\code{PC1994}}{?}
    \item{\code{AC1994}}{?}
    \item{\code{R3PC1998}}{?}
    \item{\code{RPC1994}}{?}
    \item{\code{RAC1994}}{?}
    \item{\code{RLOOKOUT}}{?}
    \item{\code{RSHREWYS}}{?}
    \item{\code{RWILLS}}{a factor with levels \code{0} \code{1} \code{Fajita}}
    \item{\code{C8TOT}}{?}
    \item{\code{G8TOT}}{?}
    \item{\code{RAC1994I}}{?}
    \item{\code{RPC1994I}}{?}
    \item{\code{R3PC1998.1}}{?}
    \item{\code{AC1998I}}{?}
    \item{\code{TOTCONES}}{total cones}
  }    
}
\source{
  J. Silvertown and M. Dodd, Evolution of life history
  in balsam fir (\emph{Abies balsamea}) in subalpine
  forests, Proc. Roy. Soc. Lond. B (1999) 266, 729-733.
}
\references{
  M. Dodd and J. Silvertown, Size-specific fecundity
  and the influence of lifetime size variation upon
  effective population size in \emph{Abies balsamea}
}
\examples{
data(FirDBHFec_sum)
attach(FirDBHFec_sum)
plot(DBH,fecundity,col=as.numeric(pop),pch=as.numeric(pop))
lms = lapply(split(FirDBHFec_sum,pop),lm,formula=fecundity~DBH)
for (i in 1:2) abline(lms[[i]],col=i)
detach(FirDBHFec_sum)
}
\keyword{datasets}
