\name{hdeco}
\alias{hdeco}
\title{Hierarchical DECOmposition Analysis Environment}
\description{A flexible data model and analysis environment for comparing categorical maps. Using information theory, differences between (or among) maps are computed along trajectories as either space or colours are decomposed from coarse to fine aggregations.}
\usage{hdeco(BE1 = demoimage1, BE2 = demoimage2, MICIKE = decomppath, MSK = FALSE, MASK = NULL, fnev = "", AutoDecoPath = FALSE, JPG = FALSE, zsir = FALSE, MULTIX = FALSE, RECODEX = FALSE, NXRECODES = 1, LUTX = NULL, RECODEZ = FALSE, NZRECODES = 1, LUTZ = NULL, HISTOGRAM = FALSE, Z1DROP = FALSE, OMITX1 = FALSE, PS = FALSE)}
\arguments{
  \item{BE1}{Required: Input categorical map 1 matrix object.}
  \item{BE2}{Input categorical map 2 matrix object (Required if comparing BE1 to BE2).}
  \item{MICIKE}{Required: The decomposition path definition matrix.}
  \item{MSK}{Boolean: TRUE if automatic filtering of zero values is to take place, otherwise FALSE}
  \item{MASK}{If a mask is to be applied, enter the object name.}
  \item{fnev}{ASCII filename to where text results are to be written.  If NULL, results are displayed in the command window.}
  \item{AutoDecoPath}{Boolean: if TRUE, a default decomposition path is used - use extreme caution, this is not recommended!}
  \item{JPG}{Boolean: TRUE if graphic results are to be saved in JPEG format, otherwise FALSE to have graphics only displayed in a graphics window.}
  \item{zsir}{Outdated and should be removed in a subsequent version - ignore.}
  \item{MULTIX}{Boolean: TRUE if multiple X-variables will be used, otherwise FALSE.}
  \item{RECODEX}{Boolean: TRUE if X-variables will be recoded.}
  \item{NXRECODES}{Integer: Number of X-variables recodes will be provided by the lookup table.}
  \item{LUTX}{Lookup table for recoding X-variables.}
  \item{RECODEZ}{Boolean: TRUE if Z-variables will be recoded, otherwise FALSE.}
  \item{NZRECODES}{Integer: Indicate how many Z-variable recodes will be provided by the lookup table.}
  \item{LUTZ}{Lookup table for recoding Z-variables.}
  \item{HISTOGRAM}{Boolean: TRUE if histograms of the map(s) are to be drawn, otherwise FALSE.}
  \item{Z1DROP}{Boolean: TRUE if the Z1-variable is to be dropped from the multidimensional array construction. If the Z-variable is recoded and the original data (Z1) are not required, dropping this variable can save considerable space and processing time.}
  \item{OMITX1}{Boolean: TRUE if the X1-variable is to be dropped from the multidimensional array construction. If the Z-variable is recoded and the original data (Z1) are not required, dropping this variable can save considerable space and processing time.}
  \item{PS}{Bolean: TRUE if Postscript versions of the graphics are to be generated, otherwise FALSE.}
}
\details{Graphical results are returned to the graphics window, a series of tabular results are stored as hidden objects.  To view a listing of these hidden objects, use the provided function ls.().}
\value{
  \item{.N}{The cardinality of map and spatial decompositions.}
  \item{.QND}{The cardinality vector for the specified decomposition.}
  \item{.QKEP}{The multi-dimensional array of probabilities.}
  \item{.VFONAL}{The decomposition pathway matrix used in the latest run of HDECO.}
  \item{.MASKTITLE}{The name of the mask used, if specified by the cim attribute.}
  \item{.CIM}{The name of the image(s) processed, if specified by the cim attribute(s).}
  \item{.COLOURS}{The total number of colours entering the HDECO algorithm.}
  \item{.LUT.X}{The lookup table for the X variable(s) if used; otherwise NULL.}
  \item{.LUT.Z}{The lookup table for the Z variable(s) if used; otherwise NULL.}
  \item{.BASE}{The base hypotheses - all X, Y, and Z variables entering the analysis.}
  \item{.HPROFIL}{The primary output of hdeco used for producing graphical spectra.  The columns represent the joint entropy between null and alternate hypotheses (HALAPF), the entropy of the null hypothesis (HNULL), the entropy of the alternate hypothesis (HALT), the mutual information between the null and alternate hypotheses (MUTU), and the uncertainty coefficient (UNC).  Additionally, the G-squared statistic, it's significance value, an indication (SING-MULT=1,2) as to whether the decomposition was for a single or multiple images, and a flag that determines log file phrase selection (DESC=1,2) reflecting either single or multiple image decomposition.}
  \item{.AHIPO}{The alternate hypotheses at each decomposition step - the X, Y, and Z variables comprising the alternate hypotheses.}
  \item{.NHIPO}{The null hypotheses at each decomposition step - the X, Y, and Z variables comprising the null hypotheses.}
  \item{.KIVALO}{The conditional alternate hypotheses identified at each step of the decomposition.  These are identified by the integer '2' in the decomposition pathway matrix.}
}
\author{Tarmo K. Remmel and Sándor Kabos}
\note{If 2 or more images are entered into the decomposition, they must have identical dimensions.  Furthermore, the dimensions must adhere to the \eqn{2^N*2^N} constraint.  The t.forcesize() function can be used to inset a smaller image into a larger nodata image that can later be masked out for processing purposes.  If the fnev argument is provided, the detailed output that is normally written to the screen is dumped into a log file with the basename provided in the fnev argument string.}
\examples{
data(demoimage1)
data(demoimage2)
data(decomppath)
hdeco(BE1=demoimage1, BE2=demoimage2, MICIKE=decomppath)
}
\keyword{arith}
