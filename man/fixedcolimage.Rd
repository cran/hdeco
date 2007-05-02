\name{fixedcolimage}
\alias{fixedcolimage}
\title{Categorical map drawing tool with set colour scheme}
\description{A tool for drawing categorical data (matrices) in their proper orientation and with a set colour palette.  This is especially useful for drawing multiple images that requrie identical palettes even though some classes may not exist on all images.}
\usage{fixedcolimage(BE = checker(8))}
\arguments{
  \item{BE}{Matrix: this is the input image that may or may not have an attribute cim that contains the title text.}
}
\details{The palette is currently fixed for 21 colours.  If more categorical colours are desired, the source code will need to be modified by the addition of more colours.}
\value{The result is a graphic with specified colour palette. The original palette along with the used colours are listed in the command window for reference.}
\author{Tarmo K. Remmel, modified from Sandor Kabos}
\note{The original function, imaks, did not force a common colour scheme across multiple images.  This version assigns specific colours to integer values and maintains class--colour consistency across multiple categorical images. Images can be assigned titles with an attribute called cim that will be placed at the top of the image during plotting.}
\examples{
test <- checker(8)
attr(test, "cim") <- "Checker 8"
fixedcolimage(test)}
\keyword{aplot}
