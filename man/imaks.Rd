\name{imaks}
\alias{imaks}
\title{Categorical map drawing tool with set colour scheme}
\description{A tool for drawing categorical data (matrices) in their proper orientation and with a set colour palette.  This is especially useful for drawing multiple images that requrie identical palettes even though some classes may not exist on all images.}
\usage{imaks(BE = demoimage1, ncolours=NULL, LENG=4)}
\arguments{
  \item{BE}{Matrix: this is the input image that may or may not have an attribute cim that contains the title text.}
  \item{ncolours}{Integer: the total number of colours in the image.  This can be automatically determined if set to NULL.}
  \item{LENG}{integer: used to control labelling.}
}
\value{The result is a graphic with title read from attribute 'cim' if it exists.specified colour palette.  This function is suitable for use with continuous surfaces.}
\author{Sandor Kabos and Tarmo Remmel}
\examples{
data(demoimage1)
imaks(demoimage1)}
\keyword{aplot}
