\name{shift}
\alias{shift}
\title{A tool for shifting a categorical map horizontally or vertically on a torus}
\description{Use this function to shift a categorical map by a specified number of pixels up, down, left, or right.  The shifted pixels are wrapped around to the opposite edge of the map.}
\usage{shift(map = demoimage1, dir = 1, n = 1, draw = TRUE, verbose = TRUE)}
\arguments{
  \item{map}{A required input categorical map as a matrix.  Currently, the requirement is that the x and y dimensions are equal.}
  \item{dir}{An integer (1,2,3, or 4) that identifies the shift direction: up, right, down, or left respectively.}
  \item{n}{The number of pixels to shift.}
  \item{draw}{A boolean flag indicating whether results will be drawn to the graphics window.}
  \item{verbose}{A boolean flag indicating whether verbose feedback is provided to standard output.}
}
\value{If valid parameters are set, the output will be the shifted map object as a matrix.  Otherwise, error messages are provided and NULL is returned.}
\author{Tarmo K. Remmel}
\note{This results of this function should be saved to an object.}
\seealso{See Also \code{\link{fixedcolimage}}, \code{\link{demoimage1}} }
\examples{
data(demoimage1)
shift(demoimage1, dir=2, n=3, draw=TRUE, verbose=TRUE)
}
\keyword{IO}

