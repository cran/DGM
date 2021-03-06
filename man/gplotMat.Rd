% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dgm.R
\name{gplotMat}
\alias{gplotMat}
\title{Plots network as adjacency matrix.}
\usage{
gplotMat(adj, title = NULL, colMapLabel = NULL, hasColMap = NULL,
  lim = c(0, 1), gradient = c("white", "orange", "red"),
  nodeLabels = waiver(), axisTextSize = 12, xAngle = 0,
  titleTextSize = 12, barWidth = 1, textSize = 12)
}
\arguments{
\item{adj}{2D adjacency matrix.}

\item{title}{title.}

\item{colMapLabel}{label for colormap.}

\item{hasColMap}{FALSE turns off color map, default is NULL (on).}

\item{lim}{vector with min and max value, data outside this range will be removed.}

\item{gradient}{gradient colors.}

\item{nodeLabels}{node labels.}

\item{axisTextSize}{text size of the y and x tick labels.}

\item{xAngle}{orientation of the x tick labels.}

\item{titleTextSize}{text size of the title.}

\item{barWidth}{width of the colorbar.}

\item{textSize}{width of the colorbar.}
}
\description{
Plots network as adjacency matrix.
}
\examples{
# Generate some sample binary 5-node network structures for N=20, then compute
# proportion at each edge
N=20
x = array(rbinom(n=5*5*N, size=1, prob=0.30), dim=c(5,5,N))
A = apply(x, c(1,2), mean)
\donttest{
gplotMat(A, title = "network", colMapLabel = '\%', barWidth = 0.3)
}

}
