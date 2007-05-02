\name{checker}
\alias{checker}
\title{Checkerboard map builder}
\description{A simple function for building 64x64 pixel checkerboard (categorical binary) maps with specified block sizes to be used as test maps.}
\usage{checker(block = 4)}
\arguments{
  \item{block}{The number of pixels that form the edge of a single colour block. For example, 4 will yield a checkerboard with 16 pixel squares.}
}
\value{This function returns a binary integer matrix with dimensions 64x64.}
\author{Tarmo K. Remmel}
\note{This function only generates 64x64 binary maps for testing. Construction of larger maps will require a modificaiton of the source code.}
\examples{checker(block = 4)}
\keyword{misc}
