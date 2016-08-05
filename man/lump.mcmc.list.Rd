\name{lump.mcmc.list}
% \alias{traceplot}
% \alias{traceplot.mcmc}
% \alias{traceplot.mcmc.list}
\alias{lump.mcmc.list}
\title{Utility functions for mcmc objects}
\description{
  Creates traceplots or combine mcmc list into
  mcmc objects
}
\usage{
lump.mcmc.list(x)
%\method{traceplot}{mcmc}(x,smooth=TRUE,ylab="",sys="lattice",\dots)
%\method{traceplot}{mcmc.list}(x,smooth=TRUE,ylab="",sys="lattice",\dots)
}
\arguments{
  \item{x}{an \code{mcmc.list} object}
%  \item{smooth}{(logical) add smoothed lines to trace plots?}
%  \item{ylab}{(character) y-label for trace plots}
%  \item{sys}{(character) graphics system to use}
%  \item{\dots}{extra arguments (for generic consistency)}
}
\value{
%  \code{traceplot.mcmc} and  \code{traceplot.mcmc.list}
%  create plots; \code{lump.mcmc.list} returns
a single \code{mcmc} object with the chains lumped together
}
\author{Ben Bolker}
\seealso{\code{coda} package}
\keyword{misc}
