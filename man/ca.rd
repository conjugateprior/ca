\name{ca}
\alias{ca}
\title{Simple correspondence analysis}
\description{Computation of simple correspondence analysis.}
\usage{ca(obj, nd = NA, suprow = NA, supcol = NA, 
   subsetrow = NA, subsetcol = NA)}
\arguments{
  \item{obj      }{A two-way table of non-negative data, usually frequencies.}
  \item{nd       }{Number of dimensions to be included in the output; if NA the maximum possible dimensions are included.}
  \item{suprow   }{Indices of supplementary rows.}
  \item{supcol   }{Indices of supplementary columns.}
  \item{subsetrow}{Row indices of subset.}
  \item{subsetcol}{Column indices of subset.}
          }
\details{The function \code{ca} computes a simple correspondence analysis based on the 
         singular value decomposition.\cr
         The options \code{suprow} and \code{supcol} allow supplementary (passive) rows and columns to be specified. 
         Using the options \code{subsetrow} and/or \code{subsetcol} result in a subset CA being performed.}
\value{
  \item{sv        }{Singular values}
  \item{nd        }{Dimenson of the solution}
  \item{rownames  }{Row names}
  \item{rowmass   }{Row masses}
  \item{rowdist   }{Row chi-square distances to centroid}
  \item{rowinertia}{Row inertias}
  \item{rowcoord  }{Row standard coordinates}
  \item{rowsup    }{Indices of row supplementary points}
  \item{colnames  }{Column names}
  \item{colmass   }{Column masses}
  \item{coldist   }{Column chi-square distances to centroid}
  \item{colinertia}{Column inertias}
  \item{colcoord  }{Column standard coordinates}
  \item{colsup    }{Indices of column supplementary points}
      }
\references{Nenadic, O. and Greenacre, M. (2007). Correspondence analysis in R, with two- and three-dimensional graphics: The ca package. Journal of Statistical Software, 20 (3), available at \url{http://www.jstatsoft.org/v20/i03/}\cr
            Greenacre, M. (2007). Correspondence Analysis in Practice. Second Edition. Chapman & Hall / CRC, London.\cr
            Blasius, J. and Greenacre, M. J. (1994), Computation of correspondence analysis, 
            in ``Correspondence Analysis in the Social Sciences'', pp. 53-75, Academic Press, 
            London.\cr
            Greenacre, M.J. and Pardo, R. (2006), Subset correspondence analysis: visualizing relationships among a selected set of response categories from a questionnaire survey. Sociological Methods and Research, 35, pp. 193-218.}
\seealso{\code{\link{svd}}, \code{\link{plot.ca}}, \code{\link{plot3d.ca}}, \code{\link{summary.ca}}, \code{\link{print.ca}} }
\examples{ 
data(author)
ca(author)
plot(ca(author))
 }
\keyword{multivariate}
