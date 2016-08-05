\name{trcoef}
\alias{trcoef}
\title{Transform coefficients}
\description{
  Perform standard transformations of coefficients
  based on information encoded in the names or
  the \code{transf} attribute of the vector or list
}
\usage{
trcoef(x, inverse = FALSE)
}
\arguments{
  \item{x}{A numeric vector of coefficients with names and/or
    a \code{transf} attribute}
  \item{inverse}{(logical) Perform inverse transform?}
}
\details{
  If \code{inverse=FALSE}
  and coefficient names begin with "logit", "log", or "sqrt"
  the function will back-transform them (using \code{\link{plogis}},
  \code{\link{exp}}, or squaring), strip the descriptor
  from the names, and set the \code{transf} attribute.
  Naturally, \code{inverse=TRUE} will do the opposite.
  If the \code{transf} attribute is all empty strings
  after an inverse transformation, it will be deleted.
}
\value{
  A vector of transformed variables with modified names
  and \code{transf} attributes.
}
\author{Ben Bolker}
\examples{
x = c(loga=1,logitb=2,sqrtc=2)
trx = trcoef(x); trx
trcoef(trx,inverse=TRUE)
}
\keyword{misc}
