\name{CARsimu}
\alias{CARsimu}
\title{Conditional AutoRegressive surface simulator }
\description{A stationary tool for simulating a surface (as a matrix of values) with specified spatial autocorrelation parameters.  The simulation return  \eqn{2^level*2^level} real-valued surface (e.g., landscape) based on the FFT algorithm and the spectral (or autocorrelation theorem using first and second order neighbours in N-S, E-W, NW-SE, and NE-SW directions.}
\usage{CARsimu(level = 5, row1 = 0.2499999, row2 = 0, col1 = 0.2499999, col2 = 0, rc1 = 0, cr1 = 0)}
\arguments{
  \item{level}{Integer: controls the dimensions of the output surface (\eqn{2^level*2^level}) }
  \item{row1}{First order neighbour East-West autocorrleation parameter}
  \item{row2}{Second order neighbour East-West autocorrelation parameter}
  \item{col1}{First order neighbour North-South autocorrelation parameter}
  \item{col2}{Second order neighbour North-South autocorrelation parameter}
  \item{rc1}{First order neighbour NW-SE autocorrelation parameter}
  \item{cr1}{First order neighbour NE-SW autocorrelation parameter}
}
\details{The sum of all six autocorrelation parameters MUST be less than 0.5.  Their effect is highly non-linear, thus there is a marked difference beetween 0.499 and 0.499999.  This implementation corresponds to the homogeneous (stationary) conditional autoregressive (CAR) model.}
\value{Returns a \eqn{2^level*2^level} matrix of real numbers.  It is possible to use the image() or imaks() functions to graphically display the surface.  Saving the output from this function into a new object is likely the most desireable usage.  Ths surface can then be factored to produce binary maps with specified proportions as in Remmel and Csillag (2003).}
\references{Remmel, T.K. and F. Csillag. 2003. When are two landscape pattern indices significantly different? Journal of Geographical Systems 5(4):331-351.}
\author{Sandor Kabos, Ferenc (Ferko) Csillag, and Tarmo Remmel}
\note{This function was originally called ujabki() - some earlier versions may be available elsewhere under this name.}
\examples{
carimage <- CARsimu(level=5, row1=0.2499999, row2=0, col1=0.2499999, col2=0, rc1=0, cr1=0)
image(carimage)
}
\keyword{IO}
