% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sort.R
\name{order_rrows}
\alias{order_rrows}
\title{Sort rrows in rtable}
\usage{
order_rrows(x, indices = c(1, 1), ...)
}
\arguments{
\item{x}{rtable object}

\item{indices}{of column and cell within a row to access value 
used for sorting. If the column index is 0 then the sum of the cell
values across all columns is derived and used for sorting. 
If \code{indices} is a function then the function argument is 
rrow object and the user must specify how to extract the information 
required to sort the rows. See examples.}

\item{...}{arguments passed on to \code{\link{order}}}
}
\value{
order of rows
}
\description{
Return order of rows in rtable based on derived values within each row.
}
\examples{
tbl <- rtable(
  header = c("A", "B"),
  rrow("r1", c(3,1), c(9,8,19)),
  rrow("r2", c(4,-1), c(8,9,21)),
  rrow("r3", c(1,3), c(3,2,22))
) 

order_rrows(tbl, c(1,1))
order_rrows(tbl, c(2, 3), decreasing = TRUE)
order_rrows(tbl, c(0,2))

order_rrows(tbl, function(row) row[[2]][3] - row[[1]][1])
}
\seealso{
\code{\link{sort_rrows}}, \code{\link{order_rtables}},
  \code{\link{sort_rtables}}
}
