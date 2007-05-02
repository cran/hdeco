\name{makepath}
\alias{makepath}
\title{Tool for building decomposition pathways for HDECO}
\description{A tool for specifying the dimensions of a new decomposition pathway that provides a spreadsheet-style entry and editing environment for cell values.}
\usage{makepath(NX = 2, NY = 6, NZ = 2, STEPS = 7, TITLE = "Custom Decomposition Path")}
\arguments{
  \item{NX}{Integer: How many X-variables to add as columns in the decomposition path}
  \item{NY}{Integer: How many Y-variables to add as columns in the decomposition path}
  \item{NZ}{Integer: How many Z-variables to add as columns in the decomposition path}
  \item{STEPS}{Integer: How many rows, or decomposition steps, are to appear in the decomposition path}
  \item{TITLE}{String: A custom name given to this decomposition path}
}
\details{The decomposition path dimensions must match the data entering the comparison.  Each line will be executed sucessively and will control the operation of HDECO.  Proper definition of the decomposition path is elemental to the successful running of HDECO.  Once the dimensions are set, this function will provide a spreadsheet-style entry envirionment where the cell entries must be provided.  When the spreadsheet is closed, the results are saved to an object called VFONAL.  Subsequent calls to makepath will overwrite VFONAL; to mitigate this effect, rename VFONAL after its creation.}
\value{This function returns a matrix with the dimensions defined above; it is called VFONAL. It will have an attribute cim that stores the custom title given to this decomposition path.}
\author{Tarmo K. Remmel}
\note{Each row of the decomposition path is executed independently.  Valid definition of the decomposition path is essential to the operation of HDECO.  Numerous meaningless decomposition paths are possible.  If unsure, begin with the examples provided in the references.}
\references{Remmel, T.K. and F. Csillag. 2006. Mutual information spectra for comparing categorical maps. International Journal of Remote Sensing 27(7)1425-1452.}
\seealso{\code{\link{hdeco}}}
\keyword{IO}
