\name{apply2d}
\alias{apply2d}
\title{Apply a function to a combination of vectors}
\description{
  applies a (non-vectorized) function to a combination of vectors;
  substitute for \code{outer}
}
\usage{
apply2d(fun, x, y, ..., use_plyr = TRUE, .progress="none")
}
\arguments{
  \item{fun}{a function of two arguments (or a character string such as \code{"*"})}
  \item{x}{first vector}
  \item{y}{second vector}
  \item{\dots}{additional arguments to \code{fun}}
  \item{use_plyr}{use methods from the \code{plyr} package?}
  \item{.progress}{progress bar type (\code{"none"}, \code{"text"},
    \code{"tk"},\code{"win"}: see \code{\link{create_progress_bar}})}

}
\value{
  a matrix of the function applied to the combinations of the vector values
}
\author{Ben Bolker}
\seealso{outer}
\examples{
outer(1:3,1:3)
## this example would work with outer() too
apply2d("*",1:3,1:3)
}
\keyword{misc}
