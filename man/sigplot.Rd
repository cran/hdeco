\name{sigplot}
\alias{sigplot}
\title{A HDECO internal plot tool for identifying G-squared significances on spectra.}
\description{Adds shaded points to decomposition spectra to identify decomposition steps with significant G-squared2 statistic values.  Requires the output from t.hdeco, specifically the object titled .HPROFIL.  This function is called internally by t.hdeco, but can be used independently if the .HPROFIL object exists.}
\usage{
sigplot(mat = .HPROFIL, column = 5, sigcol = 7, tit = "Title of Graph", xtit = "Step", ytit = "Uncertainty Coefficient", override = FALSE, lowy = 0, highy = 1)
}
\arguments{
  \item{mat}{The required .HPROFIL matrix output by the t.hdeco function (or a comparable matrix object).}
  \item{column}{Identifies the column (integer) with the data to be plotted (e.g., 5 is the uncertainty coefficient - UNC).}
  \item{sigcol}{Identifies the column (integer) with the significance value for the G-squared statistic.}
  \item{tit}{A text string identifying the title for the plot.}
  \item{xtit}{A text string used for the x-axis label.}
  \item{ytit}{A text string used for the y-axis label.}
  \item{override}{Boolean flag to override the minimum and maximum y-axis values.}
  \item{lowy}{If override is TRUE, then the new low y-axis value.}
  \item{highy}{If override is TRUE, then the new high y-axis value.}
}
\value{The graphical result is provided in the graphics window.}
\author{Tarmo K. Remmel}
\examples{
data(HPROFIL)
sigplot(mat = HPROFIL, column = 5, sigcol = 7, tit = "Title of Graph", xtit = "Step", ytit = "Uncertainty Coefficient", override = FALSE, lowy = 0, highy = 1)
}
\keyword{aplot}

