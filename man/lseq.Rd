\name{lseq}
\alias{lseq}
\title{Log-spaced sequence}
\description{
  Generates a logarithmically spaced sequence
}
\usage{
lseq(from, to, length.out)
}
\arguments{
  \item{from}{starting value}
  \item{to}{ending value}
  \item{length.out}{number of intervening values}
}
\details{
  \code{lseq()} is just a wrapper for
\code{exp(seq(log(from), log(to), length.out = length.out))}
}
\value{
  logarithmically spaced sequence
}
\author{Ben Bolker}
\seealso{\code{\link{seq}}}
\examples{
lseq(10,1000,9)
}
\keyword{misc}
